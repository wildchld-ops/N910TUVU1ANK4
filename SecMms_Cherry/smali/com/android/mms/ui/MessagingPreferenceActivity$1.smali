.class Lcom/android/mms/ui/MessagingPreferenceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    # invokes: Lcom/android/mms/ui/MessagingPreferenceActivity;->setVibrateMenu()V
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    # invokes: Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceSummary()V
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    :cond_0
    return-void
.end method
