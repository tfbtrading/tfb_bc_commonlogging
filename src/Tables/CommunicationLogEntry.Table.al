table 53010 "TFB Communication Log Entry"
{
    ObsoleteState = Removed;
    ObsoleteReason = 'Not correct structure and replaced by the Communication Entry table';
    DataClassification = CustomerContent;

    fields
    {
        field(10; Method; enum "TFB Communication Method")
        {

            DataClassification = CustomerContent;
        }

        field(20; "Record Type"; Option)
        {
            Editable = false;
            OptionMembers = "Order","Order Resp.","Whse. Ship. Order","Whse. Ship. Advice","Invoice","Whse. Rcpt. Advice","Adv. Ship. Notification","Quality Docs","Order Status Update";
            DataClassification = CustomerContent;

        }
        field(30; Direction; Enum "TFB Communication Direction")
        {
            Editable = false;
            DataClassification = CustomerContent;
        }
        field(40; "Record Table No."; Integer)
        {
            Editable = false;
            DataClassification = CustomerContent;
        }

        field(50; "Source Type"; Enum "TFB Source Type")
        {
            Editable = false;
            DataClassification = CustomerContent;
        }
        field(60; "Source ID"; Code[20])
        {
            Editable = False;
            DataClassification = CustomerContent;
        }
        field(70; "Source Name"; text[100])
        {
            DataClassification = CustomerContent;
            Editable = false;
        }

        field(80; SentCount; Integer)
        {
            Editable = false;
            AutoIncrement = true;
            DataClassification = CustomerContent;
        }
        field(90; SentTimeStamp; DateTime)
        {
            Editable = False;
            DataClassification = CustomerContent;
        }
        field(95; ResourceType; Enum "TFB Resource Type")
        {
            Editable = false;
            DataClassification = CustomerContent;
        }
        field(100; "EmbeddedResource"; Blob)
        {
            DataClassification = CustomerContent;
        }
        field(105; ExternalURL; Text[255])
        {
            DataClassification = CustomerContent;
        }
        field(110; "MessageContent"; Text[2048])
        {
            Editable = false;
            DataClassification = CustomerContent;
        }


    }

    keys
    {
        key(PK; "Record Type", Direction, "Source Type", "Source ID", SentCount)
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




}