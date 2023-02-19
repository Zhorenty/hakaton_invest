from django.shortcuts import render, redirect
from django.views import View
from .forms import OwnershipCreateForm
from .models import Ownership
from django.http import JsonResponse
import requests


def jsonmodels(request):
    data = list(Ownership.objects.values())
    return JsonResponse(data, safe=False)


def ownership_list(request):
    rows = Ownership.objects.all()
    return render(request, 'ownership/ownership_list.html', context={'rows': rows})


class OwnershipCreateView(View):
    def get(self, request):
        form = OwnershipCreateForm()
        return render(request, 'ownership/ownership_list.html', {'form': form})

    def post(self, request):
        dictionary = dict()
        address = request.POST.get('address')
        price = request.POST.get('price')
        description = request.POST.get('description')
        com_org = True if request.POST.get('com_org') is not None else False

        if int(request.POST.get('images_count')) is None:
            return redirect('ownerships_list_url')
        for i in range(int(request.POST.get('images_count'))):
            dictionary[f'image[{i}]'] = request.POST.get(f'image[{i}]')


        model = Ownership.objects.create(address=address,
                                         price=price,
                                         description=description,
                                         images=dictionary,
                                         commercial_organization=com_org,
                                         is_risked=False,
                                         potential_percent_profit_per_year=7)
        model.save()
        return redirect('ownerships_list_url')


class OwnershipDelete(View):
    def get(self, request):
        try:
            Ownership.objects.get(id=request.GET.get('id')).delete()
        except:
            return redirect(request.META.get('HTTP_REFERER'))
        return redirect(request.META.get('HTTP_REFERER'))
