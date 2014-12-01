.class Lcom/android/mms/rcs/settings/RcsSetting$1;
.super Ljava/lang/Object;
.source "RcsSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/settings/RcsSetting;->showProgressDialog()V
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

    iput-object p1, p0, Lcom/android/mms/rcs/settings/RcsSetting$1;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/settings/RcsSetting$1;->this$0:Lcom/android/mms/rcs/settings/RcsSetting;

    iget-object v0, v0, Lcom/android/mms/rcs/settings/RcsSetting;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
