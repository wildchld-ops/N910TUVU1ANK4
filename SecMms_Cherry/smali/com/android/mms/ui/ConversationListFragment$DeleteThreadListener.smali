.class public Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteThreadListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/ConversationList.DeleteThreadListener"


# instance fields
.field private final mChatId:Ljava/lang/String;

.field private final mChatIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeleteDraftMessages:Z

.field private mDeleteLockedMessages:Z

.field private mDeleteStartHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/content/AsyncQueryHandler;

.field private mHasLockedMessages:Z

.field private final mSessionId:Ljava/lang/String;

.field private final mSessionIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadId:J

.field private final mThreadIdList:[Ljava/lang/Long;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListFragment;JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V
    .locals 3
    .param p2    # J
    .param p4    # Landroid/content/AsyncQueryHandler;
    .param p5    # Landroid/content/Context;
    .param p6    # [Ljava/lang/Long;

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    iput-object p4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    iput-object p5, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteChatThreadHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3302(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/AsyncQueryHandler;)Landroid/content/AsyncQueryHandler;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mSessionId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mSessionIdList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mChatId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mChatIdList:Ljava/util/ArrayList;

    if-eqz p6, :cond_0

    invoke-virtual {p6}, [Ljava/lang/Long;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    :goto_0
    sput-boolean v2, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    new-instance v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {p1}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z
    invoke-static {p1}, Lcom/android/mms/ui/ConversationListFragment;->access$3500(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;-><init>(Lcom/android/mms/ui/MsgSweepActionListView;Z)V

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3402(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->initDeleteActionAnimation()V

    return-void

    :cond_0
    iput-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/mms/ui/ConversationListFragment;JLjava/lang/String;Landroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .param p2    # J
    .param p4    # Ljava/lang/String;
    .param p5    # Landroid/content/AsyncQueryHandler;
    .param p6    # Landroid/content/Context;
    .param p7    # [Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Landroid/content/AsyncQueryHandler;",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    iput-object p4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mSessionId:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    iput-object p6, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteChatThreadHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3302(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/AsyncQueryHandler;)Landroid/content/AsyncQueryHandler;

    iput-object p4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mChatId:Ljava/lang/String;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, [Ljava/lang/Long;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    check-cast v0, [Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    :goto_0
    if-eqz p8, :cond_1

    invoke-virtual {p8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mSessionIdList:Ljava/util/ArrayList;

    :goto_1
    if-eqz p9, :cond_2

    invoke-virtual {p9}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mChatIdList:Ljava/util/ArrayList;

    :goto_2
    sput-boolean v1, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    new-instance v0, Lcom/android/mms/animation/MsgDeleteActionAnimation;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {p1}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z
    invoke-static {p1}, Lcom/android/mms/ui/ConversationListFragment;->access$3500(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/animation/MsgDeleteActionAnimation;-><init>(Lcom/android/mms/ui/MsgSweepActionListView;Z)V

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {p1, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3402(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/animation/MsgDeleteActionAnimation;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->initDeleteActionAnimation()V

    return-void

    :cond_0
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mSessionIdList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mChatIdList:Ljava/util/ArrayList;

    goto :goto_2
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J
    .locals 2
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mChatIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    return v0
.end method

.method private deleteActionAnimationStart([I)V
    .locals 2
    .param p1    # [I

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->readyDeleteActionAnimMultiThread([I)V

    return-void
.end method

.method private deleteRun()V
    .locals 9

    const/16 v3, 0x81

    const/4 v5, 0x1

    const-string v0, "Mms/ConversationList.DeleteThreadListener"

    const-string v1, "deleteRun()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getKTSMSDeliveryReadReportsEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReportWithoutConfirmDlg(Landroid/content/Context;JILjava/lang/Runnable;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    const-wide/16 v7, -0x1

    cmp-long v0, v0, v7

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;

    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;[Ljava/lang/Long;ILjava/lang/Runnable;Z)V

    goto :goto_0

    :cond_3
    new-array v6, v5, [Ljava/lang/Long;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;[Ljava/lang/Long;ILjava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method private initDeleteActionAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMsgAnimating:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->access$3502(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->setOnMsgDeleteActionAnimation(Lcom/android/mms/animation/MsgDeleteActionAnimation$OnDeleteConversationListAnimationEndListener;)V

    return-void
.end method

.method private isAnimatableThread(J)Z
    .locals 4
    .param p1    # J

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->hasLockedMsg(J)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Mms/ConversationList.DeleteThreadListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnimatableThread threadID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isAnimatable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/ConversationListAdapter;->hasLockedMsg(J)Z

    move-result v1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v7, "Mms/ConversationList.DeleteThreadListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick(),whichButton="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # invokes: Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$3700(Lcom/android/mms/ui/ConversationListFragment;)V

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$3800(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    if-nez v7, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V

    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationComposer;

    move-result-object v7

    invoke-virtual {v7, v12}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$3400(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->createDeleteActionThreadAnim()Landroid/view/animation/Animation;

    iget-wide v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mCheckedThreadIds:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v1, v7, [I

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->isAnimatableThread(J)Z

    move-result v7

    if-nez v7, :cond_5

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_3

    if-lez v2, :cond_4

    new-array v4, v2, [I

    invoke-static {v1, v11, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteActionAnimationStart([I)V

    :cond_4
    if-nez v2, :cond_1

    array-length v7, v1

    if-lez v7, :cond_1

    const-string v7, "Mms/ConversationList.DeleteThreadListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DeleteThreadListener onClick() deleteCount == 0 delItem.length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v2, -0x1

    aput v3, v1, v7

    goto :goto_1

    :cond_6
    iget-wide v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J

    invoke-direct {p0, v7, v8}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->isAnimatableThread(J)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V

    goto/16 :goto_0

    :cond_7
    new-array v1, v12, [I

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedPosition:I
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$4000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v7

    aput v7, v1, v11

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteActionAnimationStart([I)V

    goto/16 :goto_0
.end method

.method public setDeleteDraftMessage(Z)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z

    return-object p0
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    # setter for: Lcom/android/mms/ui/ConversationListFragment;->isDeleteLockedMessages:Z
    invoke-static {v0, p1}, Lcom/android/mms/ui/ConversationListFragment;->access$3602(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    return-void
.end method

.method public setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;
    .locals 0
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setHasLockedMessage(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z

    return-void
.end method
