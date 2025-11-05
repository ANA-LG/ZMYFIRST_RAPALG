@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel Interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity Z_I_ZTRAVEL_ALG
provider contract transactional_interface
  as projection on Z_R_ZTRAVEL_ALG
{
  key TravelUUID,
      TravelID,
      AgencyID,
      CustomerID,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      CurrencyCode,
      Description,
      OverallStatus,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics. systemDateTime.lastChangedAt: true
      LocalChangeAt,
      /* Associations */
      _Agency,
      _Currency,
      _Customer,
      _OverallStatus
}
