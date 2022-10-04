permissionset 53000 "TFB CommLog"
{
    Access = Internal;
    Assignable = true;
    Caption = 'Common Logging Component', Locked = true;

    Permissions =
         table "TFB Communication Entry" = X,
          tabledata "TFB Communication Entry" = RIMD;
}