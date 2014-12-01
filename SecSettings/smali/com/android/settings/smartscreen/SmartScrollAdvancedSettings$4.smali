.class Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$4;
.super Ljava/lang/Object;
.source "SmartScrollAdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$4;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$4;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    # getter for: Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$300(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
