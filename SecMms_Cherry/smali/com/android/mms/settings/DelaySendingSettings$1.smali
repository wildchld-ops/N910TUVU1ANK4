.class Lcom/android/mms/settings/DelaySendingSettings$1;
.super Ljava/lang/Object;
.source "DelaySendingSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/DelaySendingSettings;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/DelaySendingSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/DelaySendingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/DelaySendingSettings$1;->this$0:Lcom/android/mms/settings/DelaySendingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/mms/settings/DelaySendingSettings$1;->this$0:Lcom/android/mms/settings/DelaySendingSettings;

    iget-object v0, v0, Lcom/android/mms/settings/DelaySendingSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/settings/DelaySendingSettings$1;->this$0:Lcom/android/mms/settings/DelaySendingSettings;

    # getter for: Lcom/android/mms/settings/DelaySendingSettings;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/mms/settings/DelaySendingSettings;->access$000(Lcom/android/mms/settings/DelaySendingSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeDelayOption(Landroid/content/Context;Z)Z

    iget-object v0, p0, Lcom/android/mms/settings/DelaySendingSettings$1;->this$0:Lcom/android/mms/settings/DelaySendingSettings;

    # invokes: Lcom/android/mms/settings/DelaySendingSettings;->setElementEnable()V
    invoke-static {v0}, Lcom/android/mms/settings/DelaySendingSettings;->access$100(Lcom/android/mms/settings/DelaySendingSettings;)V

    iget-object v0, p0, Lcom/android/mms/settings/DelaySendingSettings$1;->this$0:Lcom/android/mms/settings/DelaySendingSettings;

    invoke-virtual {v0}, Lcom/android/mms/settings/DelaySendingSettings;->onSaveLog()V

    return-void
.end method
