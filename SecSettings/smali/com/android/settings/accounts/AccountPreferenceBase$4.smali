.class Lcom/android/settings/accounts/AccountPreferenceBase$4;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountPreferenceBase;->addSamsungStorageUsagePreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceBase;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$4;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.scloud.quota"

    const-string v3, "com.samsung.android.scloud.quota.StorageList"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$4;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    return v1
.end method
