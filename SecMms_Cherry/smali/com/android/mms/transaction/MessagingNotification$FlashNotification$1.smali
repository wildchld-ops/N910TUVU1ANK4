.class Lcom/android/mms/transaction/MessagingNotification$FlashNotification$1;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification$FlashNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessagingNotification$FlashNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification$1;->this$0:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$FlashNotification$1;->this$0:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    invoke-virtual {v0}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->flashOff()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x56 -> :sswitch_0
        0x63 -> :sswitch_0
    .end sparse-switch
.end method
