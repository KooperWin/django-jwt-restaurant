from django.db import models


class Address(models.Model):

    class Postal_Abbr(models.TextChoices):
        Mexico = 'MX', "Mexico"
        Alabama = 'AL', "Alabama"
        Nebraska = 'NE', "Nebraska"
        Alaska = 'AK', "Alaska"
        Nevada = 'NV', "Nevada"
        Arizona = 'AZ', "Arizona"
        New_Hampshire = 'NH', "New Hampshire"
        Arkansas = 'AR', "Arkansas"
        New_Jersey = 'NJ', "New Jersey"
        California = 'CA', "California"
        New_Mexico = 'NM', "New Mexico"
        Colorado = 'CO', "Colorado"
        New_York = 'NY', "New York"
        Connecticut = 'CT', "Connecticut"
        North_Carolina = 'NC', "North Carolina"
        Delaware = 'DE', "Delaware"
        North_Dakota = 'ND', "North Dakota"
        District_of_Columbia = 'DC', "District of Columbia"
        Ohio = 'OH', "Ohio"
        Florida = 'FL', "Florida"
        Oklahoma = 'OK', "Oklahoma"
        Georgia = 'GA', "Georgia"
        Oregon = 'OR', "Oregon"
        Hawaii = 'HI', "Hawaii"
        Pennsylvania = 'PA', "Pennsylvania"
        Idaho = 'ID', "Idaho"
        Puerto_Rico = 'PR', "Puerto Rico"
        Illinois = 'IL', "Illinois"
        Rhode_Island = 'RI', "Rhode Island"
        Indiana = 'IN', "Indiana"
        South_Carolina = 'SC', "South Carolina"
        Iowa = 'IA', "Iowa"
        South_Dakota = 'SD', "South Dakota"
        Kansas = 'KS', "Kansas"
        Tennessee = 'TN', "Tennessee"
        Kentucky = 'KY', "Kentucky"
        Texas = 'TX', "Texas"
        Louisiana = 'LA', "Louisiana"
        Utah = 'UT', "Utah"
        Maine = 'ME', "Maine"
        Vermont = 'VT', "Vermont"
        Maryland = 'MD', "Maryland"
        Virginia = 'VA', "Virginia"
        Massachusetts = 'MA', "Massachusetts"
        Virgin_Islands = 'VI', "Virgin Islands"
        Michigan = 'MI', "Michigan"
        Washington = 'WA', "Washington"
        Minnesota = 'MN', "Minnesota"
        West_Virginia = 'WV', "West Virginia"
        Mississippi = 'MS', "Mississippi"
        Wisconsin = 'WI', "Wisconsin"
        Missouri = 'MO', "Missouri"
        Wyoming = 'WY', "Wyoming"
        Montana = 'MT', "Montana"

    street = models.CharField(max_length=80)
    city = models.CharField(max_length=80)
    postal_abbr = models.CharField(
        max_length=2,
        choices=Postal_Abbr.choices,
        default=Postal_Abbr.Mexico)
    zipcode = models.CharField(max_length=10)

    def __str__(self):
        return self.street+' '+self.city+' '+self.postal_abbr+' '+self.zipcode


class Restaurant(models.Model):
    name = models.CharField(max_length=100)
    schedule_open = models.TimeField(auto_now=False, auto_now_add=False)
    schedule_close = models.TimeField(auto_now=False, auto_now_add=False)
    address = models.ForeignKey(Address,null=True, on_delete=models.SET_NULL)
    phone_number = models.CharField(max_length=15)

    def __str__(self):
        return self.name+' '+self.schedule_open+' '+self.address+' '+self.phone_number
