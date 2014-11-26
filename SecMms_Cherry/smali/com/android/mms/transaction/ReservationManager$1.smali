.class Lcom/android/mms/transaction/ReservationManager$1;
.super Ljava/lang/Object;
.source "ReservationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/ReservationManager;->resetAfterConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/ReservationManager;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/ReservationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/ReservationManager$1;->this$0:Lcom/android/mms/transaction/ReservationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/transaction/ReservationManager$1;->this$0:Lcom/android/mms/transaction/ReservationManager;

    invoke-virtual {v0}, Lcom/android/mms/transaction/ReservationManager;->resetThreadAfterConnected()V

    return-void
.end method
