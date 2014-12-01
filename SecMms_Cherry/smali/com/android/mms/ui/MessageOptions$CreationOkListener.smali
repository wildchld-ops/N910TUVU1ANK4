.class Lcom/android/mms/ui/MessageOptions$CreationOkListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreationOkListener"
.end annotation


# instance fields
.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mPostExecute:Ljava/lang/Runnable;

.field private mSendReq:Lcom/google/android/mms/pdu/SendReq;

.field private mSubject:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    iput-object p4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    iput-object p4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mPostExecute:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    move v5, v2

    move v6, v2

    # invokes: Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V
    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;->access$300(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    move v5, v2

    # invokes: Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions;->access$400(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mPostExecute:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mPostExecute:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
