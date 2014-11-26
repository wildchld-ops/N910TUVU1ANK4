.class public Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$LocalBinder;
.super Landroid/os/Binder;
.source "SilentBackgroundMessageSenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;


# direct methods
.method public constructor <init>(Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$LocalBinder;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService$LocalBinder;->this$0:Lcom/android/mms/rcs/transaction/SilentBackgroundMessageSenderService;

    return-object v0
.end method
