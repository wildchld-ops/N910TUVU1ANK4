.class Lcom/android/settings/smartbonding/SmartBondingSettings$1;
.super Landroid/os/Handler;
.source "SmartBondingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/smartbonding/SmartBondingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartbonding/SmartBondingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mIsFromHelp:Z
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # invokes: Lcom/android/settings/smartbonding/SmartBondingSettings;->showHelpDialogStep1()V
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$100(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mIsFromHelp:Z
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # invokes: Lcom/android/settings/smartbonding/SmartBondingSettings;->showHelpDialogStep2()V
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$200(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mIsFromHelp:Z
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # invokes: Lcom/android/settings/smartbonding/SmartBondingSettings;->showHelpDialogStep3()V
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$300(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # getter for: Lcom/android/settings/smartbonding/SmartBondingSettings;->mIsFromHelp:Z
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$000(Lcom/android/settings/smartbonding/SmartBondingSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/smartbonding/SmartBondingSettings$1;->this$0:Lcom/android/settings/smartbonding/SmartBondingSettings;

    # invokes: Lcom/android/settings/smartbonding/SmartBondingSettings;->showHelpDialogStep4()V
    invoke-static {v0}, Lcom/android/settings/smartbonding/SmartBondingSettings;->access$400(Lcom/android/settings/smartbonding/SmartBondingSettings;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
