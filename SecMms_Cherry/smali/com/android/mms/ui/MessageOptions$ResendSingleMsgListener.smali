.class Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;
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
    name = "ResendSingleMsgListener"
.end annotation


# instance fields
.field private mCloseActivity:Z

.field private mIsMms:Z

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-boolean p3, p0, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;->mCloseActivity:Z

    iput-boolean p4, p0, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;->mIsMms:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;->mIsMms:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    # invokes: Lcom/android/mms/ui/MessageOptions;->resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageOptions;->access$100(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;->mCloseActivity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$ResendSingleMsgListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    # invokes: Lcom/android/mms/ui/MessageOptions;->resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageOptions;->access$200(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method
