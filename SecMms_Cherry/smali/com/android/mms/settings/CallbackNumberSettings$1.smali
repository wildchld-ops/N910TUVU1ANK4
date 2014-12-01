.class Lcom/android/mms/settings/CallbackNumberSettings$1;
.super Ljava/lang/Object;
.source "CallbackNumberSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/CallbackNumberSettings;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/CallbackNumberSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/CallbackNumberSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/CallbackNumberSettings$1;->this$0:Lcom/android/mms/settings/CallbackNumberSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberSettings$1;->this$0:Lcom/android/mms/settings/CallbackNumberSettings;

    iget-object v0, v0, Lcom/android/mms/settings/CallbackNumberSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/settings/CallbackNumberSettings$1;->this$0:Lcom/android/mms/settings/CallbackNumberSettings;

    # getter for: Lcom/android/mms/settings/CallbackNumberSettings;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/mms/settings/CallbackNumberSettings;->access$000(Lcom/android/mms/settings/CallbackNumberSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeCallbackOption(Landroid/content/Context;Z)Z

    iget-object v0, p0, Lcom/android/mms/settings/CallbackNumberSettings$1;->this$0:Lcom/android/mms/settings/CallbackNumberSettings;

    # invokes: Lcom/android/mms/settings/CallbackNumberSettings;->setElementEnable()V
    invoke-static {v0}, Lcom/android/mms/settings/CallbackNumberSettings;->access$100(Lcom/android/mms/settings/CallbackNumberSettings;)V

    return-void
.end method
