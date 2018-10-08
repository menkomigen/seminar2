pageextension 50100 "CSD Resource Card Ext" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resource Type"; "CSD Resource Type")
            {

            }

            field("CSD Quantity Per Day"; "CSD Quantity Per Day")
            {

            }
        }
        addlast(Content)
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowRoom;
                field("CSD Maximum Participants"; "CSD Maximum Participants")
                {

                }
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        ShowRoom := Type = Type::Machine;
    end;

    var
        [InDataSet]
        ShowRoom: Boolean;
}