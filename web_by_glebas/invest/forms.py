from django import forms


class OwnershipCreateForm(forms.Form):
    address = forms.TextInput()
    price = forms.TextInput()
    description = forms.Textarea()
    images = forms.JSONField()

