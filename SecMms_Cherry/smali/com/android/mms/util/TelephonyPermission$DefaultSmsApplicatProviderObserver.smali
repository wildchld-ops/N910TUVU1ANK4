.class Lcom/android/mms/util/TelephonyPermission$DefaultSmsApplicatProviderObserver;
.super Landroid/database/ContentObserver;
.source "TelephonyPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/TelephonyPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultSmsApplicatProviderObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/TelephonyPermission;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/TelephonyPermission;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/util/TelephonyPermission$DefaultSmsApplicatProviderObserver;->this$0:Lcom/android/mms/util/TelephonyPermission;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    const-string v0, "Mms/TelephonyPermission"

    const-string v1, "Sms Default application changed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission$DefaultSmsApplicatProviderObserver;->this$0:Lcom/android/mms/util/TelephonyPermission;

    invoke-virtual {v0}, Lcom/android/mms/util/TelephonyPermission;->refreshDefaultSmsApp()V

    iget-object v0, p0, Lcom/android/mms/util/TelephonyPermission$DefaultSmsApplicatProviderObserver;->this$0:Lcom/android/mms/util/TelephonyPermission;

    # invokes: Lcom/android/mms/util/TelephonyPermission;->notifyDefaultSmsApplication()V
    invoke-static {v0}, Lcom/android/mms/util/TelephonyPermission;->access$000(Lcom/android/mms/util/TelephonyPermission;)V

    return-void
.end method
