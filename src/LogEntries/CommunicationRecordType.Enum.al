enum 53030 "TFB Communication Record Type"
{
    Extensible = true;
    ObsoleteState = Pending;
    ObsoleteReason = 'Moved to core extension';



    value(0; SOC)
    {
        Caption = 'Sales Order Confirmation';
    }
    value(1; SOR)
    {
        Caption = 'Sales Order Response';
    }
    value(2; WSO)
    {
        Caption = 'Warehouse Shipment Order';
    }
    value(3; WSA)
    {
        Caption = 'Warehouse Shipment Advice';
    }
    value(4; INV)
    {
        Caption = 'Customer Invoice';
    }
    value(5; "WRA")
    {
        Caption = 'Warehouse Receipt Advise';
    }
    value(6; ASN)
    {
        Caption = 'Advanced Shipment Notice';
    }
    value(7; QDI)
    {
        Caption = 'Quality Documentation';
    }
    value(8; OSR)
    {
        Caption = 'Order Status Report';
    }
}
