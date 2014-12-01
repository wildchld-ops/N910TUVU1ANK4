.class Lcom/android/mms/rcs/settings/RcsSetting$7$3;
.super Ljava/lang/Object;
.source "RcsSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/settings/RcsSetting$7;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/rcs/settings/RcsSetting$7;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/settings/RcsSetting$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting$7$3;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "Mms/RcsSetting"

    const-string v1, "Cancelled for deactive RCS Service"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$7$3;->this$1:Lcom/android/mms/rcs/settings/RcsSetting$7;

    iget-object v0, v0, Lcom/android/mms/rcs/settings/RcsSetting$7;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-virtual {v0}, Lcom/android/mms/rcs/settings/RcsSetting;->updateUiComponents()V

    return-void
.end method
