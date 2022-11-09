---
external help file: KnowBe4-Partner-help.xml
Module Name: KnowBe4-Partner
online version:
schema: 2.0.0
---

# Get-KB4PhishingDomain

## SYNOPSIS

Returns all available and usable phish domains.

## SYNTAX

```powershell
Get-KB4PhishingDomain [[-DomainType] <String>] [[-ShowHidden] <String>] [[-SortDirection] <String>]
 [[-SortBy] <String>] [[-Per] <Int32>] [[-Page] <Int32>] [[-Search] <String>] [<CommonParameters>]
```

## DESCRIPTION

This cmdlet returns all usable phishing domains to be used with phishing campaigns.

## EXAMPLES

### Example 1

```powershell
Get-KB4PhishingDomain -DomainType 'ACCOUNTUSABLE' -Per 25
```

This command returns 25 usable phishing domains.

### Example 2

```powershell
Get-KB4PhishingDomain -Search 'kb4.io'
```

This command returns all domain names related to `kb4.io`.

## PARAMETERS

### -DomainType

The domain type to be returned. Default value is `ACCOUNTUSABLE`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: ACCOUNTUSABLE

Required: False
Position: 0
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
Position: 5
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
Accepted values: 25, 100, 500

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Search

The phishing domain to search for.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 6
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ShowHidden

Include hidden phish domains. Default is `false`.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: true, false

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SortBy

The field in which to sort by.

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: NAME, CREATEDAT, DOMAINTYPE, REPLYTOENABLED

Required: False
Position: 3
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
Position: 2
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
