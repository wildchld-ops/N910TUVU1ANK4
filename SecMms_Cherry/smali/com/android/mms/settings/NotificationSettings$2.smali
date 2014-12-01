.class Lcom/android/mms/settings/NotificationSettings$2;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/NotificationSettings;->updateReminderAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/NotificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/NotificationSettings$2;->this$0:Lcom/android/mms/settings/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/mms/settings/NotificationSettings$2;->this$0:Lcom/android/mms/settings/NotificationSettings;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/settings/NotificationSettings;->onSaveLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
