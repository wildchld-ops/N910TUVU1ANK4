.class Lcom/android/mms/ui/ReservationMessageManager$7;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Lcom/android/mms/ui/ReservationMessageListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ReservationMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$7;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/ReservationMessageListAdapter;)V
    .locals 2

    const-string v0, "Mms/ReservationMessageManager"

    const-string v1, "onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$7;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-object v1, p0, Lcom/android/mms/ui/ReservationMessageManager$7;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # getter for: Lcom/android/mms/ui/ReservationMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/ReservationMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$800(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/ReservationMessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ReservationMessageListAdapter;->getCount()I

    move-result v1

    # setter for: Lcom/android/mms/ui/ReservationMessageManager;->mMessageCount:I
    invoke-static {v0, v1}, Lcom/android/mms/ui/ReservationMessageManager;->access$702(Lcom/android/mms/ui/ReservationMessageManager;I)I

    iget-object v0, p0, Lcom/android/mms/ui/ReservationMessageManager$7;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    # invokes: Lcom/android/mms/ui/ReservationMessageManager;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/ReservationMessageManager;->access$900(Lcom/android/mms/ui/ReservationMessageManager;)V

    return-void
.end method
