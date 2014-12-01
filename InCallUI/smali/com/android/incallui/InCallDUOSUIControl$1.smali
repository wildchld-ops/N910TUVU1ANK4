.class Lcom/android/incallui/InCallDUOSUIControl$1;
.super Ljava/lang/Object;
.source "InCallDUOSUIControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallDUOSUIControl;->showDuosPhoneSwitchDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallDUOSUIControl;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallDUOSUIControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallDUOSUIControl$1;->this$0:Lcom/android/incallui/InCallDUOSUIControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl$1;->this$0:Lcom/android/incallui/InCallDUOSUIControl;

    invoke-virtual {v0}, Lcom/android/incallui/InCallDUOSUIControl;->dismissControlPopup()V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl$1;->this$0:Lcom/android/incallui/InCallDUOSUIControl;

    invoke-virtual {v0}, Lcom/android/incallui/InCallDUOSUIControl;->holdMeThenSwitch()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/InCallDUOSUIControl$1;->this$0:Lcom/android/incallui/InCallDUOSUIControl;

    invoke-virtual {v0}, Lcom/android/incallui/InCallDUOSUIControl;->hangupMeThenSwitch()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
