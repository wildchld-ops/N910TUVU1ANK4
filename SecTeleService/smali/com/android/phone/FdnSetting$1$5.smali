.class Lcom/android/phone/FdnSetting$1$5;
.super Ljava/lang/Object;
.source "FdnSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FdnSetting$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/FdnSetting$1;


# direct methods
.method constructor <init>(Lcom/android/phone/FdnSetting$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/FdnSetting$1$5;->this$1:Lcom/android/phone/FdnSetting$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/FdnSetting$1$5;->this$1:Lcom/android/phone/FdnSetting$1;

    iget-object v0, v0, Lcom/android/phone/FdnSetting$1;->this$0:Lcom/android/phone/FdnSetting;

    invoke-virtual {v0}, Lcom/android/phone/FdnSetting;->finish()V

    return-void
.end method
