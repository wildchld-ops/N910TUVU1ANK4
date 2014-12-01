.class public Lcom/android/mms/ui/ComposeDeleteMessage;
.super Ljava/lang/Object;
.source "ComposeDeleteMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;,
        Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/DeleteMessage"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field protected mCancelConfirmDialog:Landroid/content/DialogInterface;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mDeleteLocked:Z

.field private mDeleteUri:Landroid/net/Uri;

.field private mFallbackBundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

.field private mHasLockedMessage:Z

.field public mMsgItemUri:Landroid/net/Uri;

.field private mMsgItemWillBeDeleted:Lcom/android/mms/ui/MessageItem;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mMsgItemUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mFallbackBundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/rcs/transaction/FallbackBundle;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mMsgItemUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mFallbackBundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mFallbackBundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeDeleteMessage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/mms/ui/ComposeDeleteMessage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeDeleteMessage;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeDeleteMessage;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private static confirmCancelDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c012f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    const v1, 0x7f0c033c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_0
    const v1, 0x7f0c033b

    goto :goto_0
.end method

.method private static confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p2, :cond_0

    const v1, 0x7f0c0079

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c007c

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    :cond_0
    const v1, 0x7f0c0078

    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;IZLandroid/content/Context;Ljava/lang/String;I)Landroid/app/AlertDialog;
    .locals 7

    const/4 v6, 0x0

    const v4, 0x7f040048

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(I)V

    if-nez p2, :cond_0

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    if-le p1, v4, :cond_1

    const v4, 0x7f0c017b

    :goto_1
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0c007c

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    new-instance v4, Lcom/android/mms/ui/ComposeDeleteMessage$1;

    invoke-direct {v4, p0, v2}, Lcom/android/mms/ui/ComposeDeleteMessage$1;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const v4, 0x7f0c017a

    goto :goto_1
.end method


# virtual methods
.method public clearConfirmDeleteDlg()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    return-void
.end method

.method public deleteMessage()V
    .locals 50

    const-string v4, "Mms/DeleteMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteMessage() mDeleteUri="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "GATE"

    const-string v5, "<GATE-M>MSG_DELETED</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v3

    new-instance v28, Lorg/json/JSONArray;

    invoke-direct/range {v28 .. v28}, Lorg/json/JSONArray;-><init>()V

    new-instance v29, Lorg/json/JSONArray;

    invoke-direct/range {v29 .. v29}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Mms/DeleteMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "remove hidden im / ft message threadId = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v12

    invoke-static {v4, v12, v13}, Lcom/android/mms/rcs/RcsChatManager;->deleteHideRcsMessage(Landroid/content/Context;J)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mFallbackBundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

    if-eqz v4, :cond_7

    const-string v4, "Mms/DeleteMessage"

    const-string v5, "fallback delete start"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v39, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mFallbackBundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

    invoke-virtual {v4}, Lcom/android/mms/rcs/transaction/FallbackBundle;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v43

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mFallbackBundle:Lcom/android/mms/rcs/transaction/FallbackBundle;

    invoke-virtual {v4}, Lcom/android/mms/rcs/transaction/FallbackBundle;->getMsgId()J

    move-result-wide v39

    const-wide/16 v4, 0x0

    cmp-long v4, v39, v4

    if-lez v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, v43

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "im"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static/range {v39 .. v40}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/android/mms/rcs/transaction/ActionsFactory;->deleteMessages(Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    const/16 v4, 0x25e4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v8, :cond_6

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/ui/ComposeDeleteMessage$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/ui/ComposeDeleteMessage$2;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;)V

    const-string v8, "delete"

    invoke-direct {v4, v5, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteWithAnimation(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Lcom/android/mms/reflector/AmbsReflector;->onDeleteMessage(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_4
    return-void

    :cond_5
    invoke-static/range {v39 .. v40}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/android/mms/rcs/transaction/ActionsFactory;->deleteMessages(Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_6
    const-string v7, "locked=0"

    goto :goto_1

    :cond_7
    const/16 v32, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    if-eqz v4, :cond_e

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v49

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mMsgItemWillBeDeleted:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/mms/reflector/AmbsReflector;->getUidWillBeDeleted(Lcom/android/mms/ui/MessageItem;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "im"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getRcsDbId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v26

    const-wide/16 v4, 0x0

    cmp-long v4, v26, v4

    if-lez v4, :cond_9

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/android/mms/rcs/transaction/ActionsFactory;->deleteMessages(Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_a
    :goto_3
    const/16 v8, 0x25e4

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v4, :cond_d

    const/4 v11, 0x0

    :goto_4
    const/4 v12, 0x0

    move-object v7, v3

    invoke-virtual/range {v7 .. v12}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "ft"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getRcsFtSessionId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v37

    const-wide/16 v4, 0x0

    cmp-long v4, v37, v4

    if-lez v4, :cond_c

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v5}, Lcom/android/mms/rcs/transaction/ActionsFactory;->deleteMessages(Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    :cond_d
    const-string v11, "locked=0"

    goto :goto_4

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v5

    if-eq v4, v5, :cond_10

    :cond_f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversationThreadId()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v12, v13, v5}, Lcom/android/mms/data/Conversation;->queryMessageCount(JLandroid/content/Context;)I

    move-result v5

    if-ne v4, v5, :cond_21

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mHasLockedMessage:Z

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v4, :cond_19

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    const/16 v46, -0x1

    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_14

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_12
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v4, 0x40

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    const/4 v4, 0x1

    move/from16 v0, v46

    if-eq v0, v4, :cond_1a

    :cond_13
    :goto_6
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_12

    :cond_14
    if-eqz v41, :cond_15

    invoke-virtual/range {v41 .. v41}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x1

    move-object/from16 v0, v41

    invoke-static {v0, v5}, Lcom/android/mms/rcs/transaction/ActionsFactory;->deleteMessages(Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_15
    if-eqz v42, :cond_16

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object/from16 v0, v42

    invoke-static {v0, v5}, Lcom/android/mms/rcs/transaction/ActionsFactory;->deleteMessages(Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v47

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v47

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v4, :cond_1f

    const/16 v45, 0x0

    :goto_7
    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v4

    move-object/from16 v0, v45

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v4, v6, v0, v1, v2}, Lcom/android/mms/reflector/AmbsReflector;->getUidWillBeDeleted(Landroid/net/Uri;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v7

    const/16 v8, 0x70a

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    const/4 v10, 0x1

    new-instance v11, Lcom/android/mms/ui/DeleteInfo;

    const/4 v4, 0x1

    move-wide/from16 v0, v47

    invoke-direct {v11, v0, v1, v4}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v12

    invoke-static/range {v7 .. v12}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    goto/16 :goto_2

    :cond_18
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    goto/16 :goto_5

    :cond_19
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    goto/16 :goto_5

    :cond_1a
    const-string v4, "im"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "ft"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_1b
    const/16 v4, 0x2b

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    const/16 v4, 0x3c

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    const/16 v4, 0x15

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v30, 0x1

    :goto_8
    if-eqz v30, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v4, :cond_13

    :cond_1c
    const-string v4, "im"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-wide/16 v4, 0x0

    cmp-long v4, v35, v4

    if-lez v4, :cond_13

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1d
    const/16 v30, 0x0

    goto :goto_8

    :cond_1e
    const-string v4, "ft"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-wide/16 v4, 0x0

    cmp-long v4, v37, v4

    if-lez v4, :cond_13

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1f
    const-string v45, "locked=0"

    goto/16 :goto_7

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v7

    const/16 v8, 0x70a

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    const/4 v10, 0x0

    new-instance v11, Lcom/android/mms/ui/DeleteInfo;

    const/4 v4, 0x1

    move-wide/from16 v0, v47

    invoke-direct {v11, v0, v1, v4}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v12

    invoke-static/range {v7 .. v12}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    goto/16 :goto_2

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    const/16 v22, 0x0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_26

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_26

    :cond_22
    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v4, 0x16

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const/16 v46, -0x1

    const-wide/16 v37, -0x1

    const-wide/16 v35, -0x1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_23
    const/16 v4, 0x40

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    const/16 v4, 0x2b

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    const/16 v4, 0x3c

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    :cond_24
    const-string v4, "reserved"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    move-wide/from16 v0, v33

    move/from16 v2, v46

    invoke-virtual {v4, v0, v1, v9, v2}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_29

    :cond_25
    :goto_9
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_22

    :cond_26
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_28

    if-eqz v18, :cond_27

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/android/mms/rcs/transaction/ActionsFactory;->deleteMessages(Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_27
    if-eqz v19, :cond_28

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v5}, Lcom/android/mms/rcs/transaction/ActionsFactory;->deleteMessages(Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_28
    if-nez v22, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    goto/16 :goto_2

    :cond_29
    const/16 v4, 0x15

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2d

    const/16 v30, 0x1

    :goto_a
    if-eqz v30, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v4, :cond_25

    :cond_2a
    add-int/lit8 v22, v22, 0x1

    const-string v4, "mms"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v33

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    :cond_2b
    :goto_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v4

    if-eqz v4, :cond_2c

    new-instance v11, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v11}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    :try_start_0
    new-instance v7, Lcom/android/mms/ui/MessageItem;

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V

    invoke-static {}, Lcom/android/mms/reflector/AmbsReflector;->getInstance()Lcom/android/mms/reflector/AmbsReflector;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v7, v0, v1}, Lcom/android/mms/reflector/AmbsReflector;->getUidWillBeDeleted(Lcom/android/mms/ui/MessageItem;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2c
    :goto_c
    const/16 v13, 0x25e4

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v4, :cond_34

    const/16 v16, 0x0

    :goto_d
    const/16 v17, 0x0

    move-object v12, v3

    invoke-virtual/range {v12 .. v17}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_2d
    const/16 v30, 0x0

    goto :goto_a

    :cond_2e
    const-string v4, "wpm"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v33

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    goto :goto_b

    :cond_2f
    const-string v4, "im"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    sget-object v4, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v33

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    const/4 v4, 0x1

    move/from16 v0, v44

    if-ne v0, v4, :cond_30

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v4

    if-eqz v4, :cond_30

    sget-object v4, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageChat;->URI_SCHEDULED_IM:Landroid/net/Uri;

    move-wide/from16 v0, v33

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    :cond_30
    const-wide/16 v4, 0x0

    cmp-long v4, v35, v4

    if-lez v4, :cond_2b

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_31
    const-string v4, "ft"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    sget-object v4, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v33

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    const-wide/16 v4, 0x0

    cmp-long v4, v37, v4

    if-lez v4, :cond_2b

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_32
    cmp-long v4, v33, v24

    if-nez v4, :cond_33

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v33

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    goto/16 :goto_b

    :cond_33
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v33

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    goto/16 :goto_b

    :catch_0
    move-exception v23

    const-string v4, "Mms/DeleteMessage"

    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :cond_34
    const-string v16, "locked=0"

    goto/16 :goto_d
.end method

.method public deleteMessage(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v1, "Mms/DeleteMessage"

    const-string v4, "deleteMessage with message List: "

    invoke-static {v1, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v0

    sget-object v9, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsChat;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    new-array v8, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v8, v7

    const-string v1, "Mms/DeleteMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteMessage with message List msgId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v8, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v1, v8, v7

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v9, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/16 v1, 0x25e4

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteLocked:Z

    if-eqz v4, :cond_2

    move-object v4, v2

    :goto_1
    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "locked=0"

    goto :goto_1
.end method

.method public deleteSelectedMessages()V
    .locals 20

    const-string v1, "Mms/DeleteMessage"

    const-string v4, "deleteSelectedMessages()"

    invoke-static {v1, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListView()Lcom/android/mms/ui/MessageListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getCount()I

    move-result v8

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListView()Lcom/android/mms/ui/MessageListView;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/mms/ui/MessageListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/Cursor;

    if-nez v7, :cond_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/16 v1, 0x15

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v11, 0x1

    :goto_2
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    const/16 v1, 0x40

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    :goto_3
    const/4 v1, 0x1

    if-ne v11, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    if-le v12, v1, :cond_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v2

    new-instance v1, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v4, v3}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0078

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    const/4 v6, 0x1

    if-le v12, v6, :cond_9

    const v6, 0x7f0c0224

    :goto_5
    invoke-static/range {v1 .. v6}, Lcom/android/mms/ui/ComposeDeleteMessage;->confirmDeleteMessageDialog(Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;IZLandroid/content/Context;Ljava/lang/String;I)Landroid/app/AlertDialog;

    move-result-object v9

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    :cond_7
    const/16 v16, -0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c017e

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v5, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_9
    const v6, 0x7f0c0223

    goto :goto_5
.end method

.method public dismissCancelConfirmDlg()V
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "date"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mMsgItemUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mMsgItemUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    const-string v0, "Mms/DeleteMessage"

    const-string v1, "dismissCancelConfirmDlg, dismissed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "Mms/DeleteMessage"

    const-string v1, "dismissCancelConfirmDlg, noop"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public showCancelConfirmDlg(Lcom/android/mms/ui/MessageItem;Landroid/net/Uri;)V
    .locals 4

    new-instance v1, Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {v1, p0, p2, v2}, Lcom/android/mms/ui/ComposeDeleteMessage$CancelMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v2, v1, v3}, Lcom/android/mms/ui/ComposeDeleteMessage;->confirmCancelDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mCancelConfirmDialog:Landroid/content/DialogInterface;

    return-void
.end method

.method public showDeleteConfirmDlg(Landroid/database/Cursor;)V
    .locals 16

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v5}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v1, Lcom/android/mms/ui/MessageItem;

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mMsgItemWillBeDeleted:Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/16 v1, 0x15

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v11, 0x1

    :goto_2
    const/16 v1, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    new-instance v6, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;JLjava/lang/String;ZJ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v6, v11}, Lcom/android/mms/ui/ComposeDeleteMessage;->confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v14

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v14, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v14}, Landroid/app/AlertDialog;->show()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    goto :goto_0

    :catch_0
    move-exception v15

    const-string v1, "Mms/DeleteMessage"

    invoke-virtual {v15}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    goto :goto_2
.end method

.method public showDeleteConfirmDlg(Lcom/android/mms/ui/MessageItem;Landroid/net/Uri;)V
    .locals 4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttAcms()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mMsgItemWillBeDeleted:Lcom/android/mms/ui/MessageItem;

    :cond_0
    new-instance v1, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {v1, p0, p2, v2}, Lcom/android/mms/ui/ComposeDeleteMessage$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeDeleteMessage;Landroid/net/Uri;Z)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mActivity:Landroid/app/Activity;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-static {v2, v1, v3}, Lcom/android/mms/ui/ComposeDeleteMessage;->confirmDeleteDialog(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeDeleteMessage;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-void
.end method
