/// <summary>
/// Table TFB Communication Entry (ID 53000).
/// </summary>
table 53000 "TFB Communication Entry"
{
    DataClassification = CustomerContent;
    ObsoleteState = Pending;
    ObsoleteReason = 'Moved to core extension';

    fields
    {
        field(10; Method; enum "TFB Communication Method")
        {

            DataClassification = CustomerContent;
        }

        field(20; "Record Type"; Enum "TFB Communication Record Type")
        {

            DataClassification = CustomerContent;

        }
        field(30; Direction; Enum "TFB Communication Direction")
        {

            DataClassification = CustomerContent;
        }
        field(40; "Record Table No."; Integer)
        {

            DataClassification = CustomerContent;
        }
        field(45; "Record No."; Code[20])
        {

            DataClassification = CustomerContent;
        }
        field(50; "Source Type"; Enum "TFB Source Type")
        {

            DataClassification = CustomerContent;
        }
        field(60; "Source ID"; Code[20])
        {

            DataClassification = CustomerContent;
        }
        field(70; "Source Name"; text[100])
        {
            DataClassification = CustomerContent;

        }

        field(80; SentCount; Integer)
        {

            AutoIncrement = true;
            DataClassification = CustomerContent;
        }
        field(90; SentTimeStamp; DateTime)
        {

            DataClassification = CustomerContent;
        }
        field(95; ResourceType; Enum "TFB Resource Type")
        {

            DataClassification = CustomerContent;
        }
        field(100; EmbeddedResource; Blob)
        {
            DataClassification = CustomerContent;
        }
        field(105; ExternalURL; Text[255])
        {
            DataClassification = CustomerContent;
        }
        field(110; MessageContent; Text[2048])
        {

            DataClassification = CustomerContent;
        }


    }

    keys
    {
        key(PK; "Record Type", "Record No.", Direction, SentCount)
        {
            Clustered = true;

        }
        key(SentTimeStamp; SentTimeStamp)
        {

        }
        key(SourceName; "Source Name")
        {

        }

    }

    /// <summary> 
    /// Check Prior Entry DateTime for Communitications Enrt
    /// </summary>
    /// <param name="CommMethod">Parameter of type Enum "TFB Communication Method".</param>
    /// <param name="RecType">Parameter of type Option.</param>
    /// <param name="RecNo">Parameter of type Code[20].</param>
    /// <param name="DirectionParam">Parameter of type enum "TFB Communication Direction".</param>
    /// <param name="SourceType">Parameter of type Enum "TFB Source Type".</param>
    /// <param name="SourceID">Parameter of type Code[20].</param>
    /// <returns>Return variable "DateTime".</returns>
    procedure CheckPriorEntryDateTime(CommMethod: Enum "TFB Communication Method"; RecType: Option; RecNo: Code[20]; DirectionParam: enum "TFB Communication Direction"; SourceType: Enum "TFB Source Type"; SourceID: Code[20]): DateTime

    var
        CommunicationEntry: Record "TFB Communication Entry";

    begin
        CommunicationEntry.SetRange("Record No.", RecNo);
        CommunicationEntry.SetRange("Record Type", RecType);
        CommunicationEntry.SetRange(Direction, DirectionParam);
        CommunicationEntry.LoadFields(SentTimeStamp);
        if CommunicationEntry.FindFirst() then
            Exit(CommunicationEntry.SentTimeStamp)

        else
            Exit(0DT);

    end;



}