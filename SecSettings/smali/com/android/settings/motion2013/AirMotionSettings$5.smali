.class Lcom/android/settings/motion2013/AirMotionSettings$5;
.super Ljava/lang/Object;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/AirMotionSettings;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionSettings$5;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionSettings$5;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    # getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionSettings;->access$400(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
