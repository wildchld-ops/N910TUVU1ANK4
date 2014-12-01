.class Lcom/android/settings/safetycare/SafetyCareDisaster$9;
.super Ljava/lang/Object;
.source "SafetyCareDisaster.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/safetycare/SafetyCareDisaster;->displayDataChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareDisaster;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$9;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisaster$9;->this$0:Lcom/android/settings/safetycare/SafetyCareDisaster;

    # getter for: Lcom/android/settings/safetycare/SafetyCareDisaster;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareDisaster;->access$000(Lcom/android/settings/safetycare/SafetyCareDisaster;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
