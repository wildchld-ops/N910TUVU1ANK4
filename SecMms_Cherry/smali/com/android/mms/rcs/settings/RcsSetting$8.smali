.class Lcom/android/mms/rcs/settings/RcsSetting$8;
.super Ljava/lang/Object;
.source "RcsSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/settings/RcsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/settings/RcsSetting;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting$8;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1    # Landroid/preference/Preference;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.action.PERMANENT_DISABLE_JOYN_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting$8;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v1, v1, Lcom/android/mms/rcs/settings/RcsSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting$8;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v1}, Lcom/android/mms/rcs/settings/RcsSetting;->registerPermanentDisableStateObserver()V

    iget-object v1, p0, Lcom/android/mms/rcs/settings/RcsSetting$8;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v1}, Lcom/android/mms/rcs/settings/RcsSetting;->showPermanentDisableStateProgressDialog()V

    const/4 v1, 0x0

    return v1
.end method
