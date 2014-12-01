.class Lcom/android/mms/settings/SpamSettings$1;
.super Ljava/lang/Object;
.source "SpamSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/SpamSettings;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/SpamSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/SpamSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/SpamSettings$1;->this$0:Lcom/android/mms/settings/SpamSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings$1;->this$0:Lcom/android/mms/settings/SpamSettings;

    iget-object v0, v0, Lcom/android/mms/settings/SpamSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/settings/SpamSettings$1;->this$0:Lcom/android/mms/settings/SpamSettings;

    # getter for: Lcom/android/mms/settings/SpamSettings;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/mms/settings/SpamSettings;->access$000(Lcom/android/mms/settings/SpamSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeSpamOption(Landroid/content/Context;Z)Z

    iget-object v0, p0, Lcom/android/mms/settings/SpamSettings$1;->this$0:Lcom/android/mms/settings/SpamSettings;

    # invokes: Lcom/android/mms/settings/SpamSettings;->setElementEnable()V
    invoke-static {v0}, Lcom/android/mms/settings/SpamSettings;->access$100(Lcom/android/mms/settings/SpamSettings;)V

    return-void
.end method
