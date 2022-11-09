---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# Get-KB4ManagedAccount

## SYNOPSIS

Returns all managed accounts.

## SYNTAX

```powershell
Get-KB4ManagedAccount [[-Per] <Int32>] [[-Page] <Int32>] [[-Search] <String>] [[-Status] <String>]
 [[-BillingType] <String>] [[-SortField] <String>] [[-SortDirection] <String>]
 [[-OtherPartnersAccounts] <String>] [<CommonParameters>]
```

## DESCRIPTION

Returns all managed accounts. You can filter the results by searching for a particular client name.

## EXAMPLES

### Example 1

```powershell
Get-KB4ManagedAccount -Search 'contoso' -BillingType 'PAID' -Status 'ACTIVE'
```

This command returns the client account 'contoso'. The search parameter can be used on its own if needed.

## PARAMETERS

### -BillingType

The current billing type of the managed account.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ANY, PAID, TRIAL, FREE

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -OtherPartnersAccounts

TBD. Default value is `ALL`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ALL

Required: False
Position: 7
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Page

The page number you want returned.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Per

This specifies how many results you want returned. Default is 25 (per page).

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:
Accepted values: 25, 100

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search

This specifies which client name you want to search for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SortDirection

The sort direction of all returned results.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ASCENDING, DESCENDING

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SortField

The field in which to sort by.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ORGANIZATION, DATE_CREATED, SEATS, USERS, PHISH_PRONE, PSTS

Required: False
Position: 5
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Status

The current status of the managed client account.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ALL, ACTIVE, ARCHIVED

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object

## NOTES

Author: Terry Wilson

## RELATED LINKS
