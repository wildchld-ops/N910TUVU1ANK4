.class Lcom/android/mms/settings/EntrancePrefActivity$1;
.super Ljava/lang/Object;
.source "EntrancePrefActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/settings/EntrancePrefActivity;->updatePrioritySenderEnabledState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/settings/EntrancePrefActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/settings/EntrancePrefActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/settings/EntrancePrefActivity$1;->this$0:Lcom/android/mms/settings/EntrancePrefActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/mms/settings/EntrancePrefActivity$1;->this$0:Lcom/android/mms/settings/EntrancePrefActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/settings/EntrancePrefActivity;->onSaveLog(Z)V

    const/4 v1, 0x1

    return v1
.end method
