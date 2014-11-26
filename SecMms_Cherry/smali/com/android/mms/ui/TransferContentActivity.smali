.class public Lcom/android/mms/ui/TransferContentActivity;
.super Landroid/app/ListActivity;
.source "TransferContentActivity.java"


# static fields
.field public static final CHECK_BOX_CHECKED:Z = false

.field private static final CONTACT_PICKER:I = 0x12ffb0c7

.field public static final IMAGE_RESIZE:Ljava/lang/String; = "image_resize"

.field public static final KEY_IS_CHECK_BOX_CHECKED:Ljava/lang/String; = "showImageResizeDialog"

.field private static final REQUEST_CODE_GET_PARTICIPANT:I

.field private static final TAG:Ljava/lang/String;

.field public static mBackToChat:Z


# instance fields
.field intent:Landroid/content/Intent;

.field private mAction:Ljava/lang/String;

.field private mAttachDialog:Landroid/app/AlertDialog;

.field public mCheckBox:Landroid/widget/CheckBox;

.field private mExtraData:Landroid/os/Bundle;

.field private mFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHandleTransferAttachmentHandler:Lcom/android/mms/util/HandleTransferAttachment;

.field private mNew:Z

.field private mRecipient:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Ljava/lang/String;

.field private mWhichButton:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/mms/ui/TransferContentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/TransferContentActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/TransferContentActivity;->mBackToChat:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/TransferContentActivity;->mFiles:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/TransferContentActivity;->mRecipient:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/TransferContentActivity;->mWhichButton:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/TransferContentActivity;->mHandleTransferAttachmentHandler:Lcom/android/mms/util/HandleTransferAttachment;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/TransferContentActivity;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/TransferContentActivity;

    iget v0, p0, Lcom/android/mms/ui/TransferContentActivity;->mWhichButton:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/TransferContentActivity;I)I
    .locals 0
    .param p0    # Lcom/android/mms/ui/TransferContentActivity;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/TransferContentActivity;->mWhichButton:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/TransferContentActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/ui/TransferContentActivity;

    invoke-direct {p0}, Lcom/android/mms/ui/TransferContentActivity;->handleIntentRequsetParticipant()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/TransferContentActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/mms/ui/TransferContentActivity;

    iget-object v0, p0, Lcom/android/mms/ui/TransferContentActivity;->mAttachDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/TransferContentActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0    # Lcom/android/mms/ui/TransferContentActivity;
    .param p1    # Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/mms/ui/TransferContentActivity;->mAttachDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private creatDialog()V
    .locals 5

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0129

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f08002e

    const/4 v3, 0x0

    new-instance v4, Lcom/android/mms/ui/TransferContentActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/TransferContentActivity$1;-><init>(Lcom/android/mms/ui/TransferContentActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lcom/android/mms/ui/TransferContentActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/TransferContentActivity$2;-><init>(Lcom/android/mms/ui/TransferContentActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/mms/ui/TransferContentActivity$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/TransferContentActivity$3;-><init>(Lcom/android/mms/ui/TransferContentActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/mms/ui/TransferContentActivity$4;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/TransferContentActivity$4;-><init>(Lcom/android/mms/ui/TransferContentActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAttachmentTypeAdapter(ZI)Lcom/android/mms/ui/IconListAdapter;
    .locals 1
    .param p1    # Z
    .param p2    # I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGridViewOnAddAttachmentMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportContextAwareness()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/AttachmentTypeWeightGridAdapter;-><init>(Landroid/content/Context;ZI)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/mms/ui/AttachmentTypeGridAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;-><init>(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportContextAwareness()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/AttachmentTypeWeightSelectorAdapter;-><init>(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;ZI)V

    goto :goto_0
.end method

.method private handleIntentRequsetParticipant()V
    .locals 4

    const/4 v0, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "additional"

    const-string v2, "freechat-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "additional2"

    const-string v2, "freechat-only-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v1

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v2

    if-le v1, v2, :cond_3

    const-string v1, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->doBoost(Landroid/content/Context;I)V

    sget-object v1, Lcom/android/mms/ui/TransferContentActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityForAddMedia. reqCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string v1, "additional2"

    const-string v2, "show-chat-first"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "additional"

    const-string v2, "email-phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v1, "additional"

    const-string v2, "phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string v1, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageAdhocGroupSizeMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private handleIntentStartFt(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/TransferContentActivity;->showAddAttachmentDialog(ZI)V

    return-void
.end method

.method private showLowMemoryDialog(JJ)V
    .locals 4
    .param p1    # J
    .param p3    # J

    cmp-long v1, p1, p3

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/TransferContentActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " freeMemory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "File size limtit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c04f0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "not_enough_memory_dialog_message"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00ee

    new-instance v3, Lcom/android/mms/ui/TransferContentActivity$5;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/TransferContentActivity$5;-><init>(Lcom/android/mms/ui/TransferContentActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 29
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v25, Lcom/android/mms/ui/TransferContentActivity;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "onActivityResult. reqCode:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    sget-object v25, Lcom/android/mms/ui/TransferContentActivity;->TAG:Ljava/lang/String;

    const-string v26, "onActivityResult: Activity will be finished due to receive unknown requestCode"

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_2

    :cond_1
    sget-object v25, Lcom/android/mms/ui/TransferContentActivity;->TAG:Ljava/lang/String;

    const-string v26, "postFileSelector: User may cancelled to select files"

    invoke-static/range {v25 .. v26}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    const-string v26, "result"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    const-string v25, "from_free_tab"

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    if-nez v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/TransferContentActivity;->mType:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/mms/ui/MessageUtils;->isAttachSupportedType(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_5

    :cond_3
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    new-instance v20, Landroid/os/StatFs;

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/StatFs;->getBlockSize()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    mul-long v8, v25, v27

    const-wide/16 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/TransferContentActivity;->mType:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "text/x-vCard"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v25

    move/from16 v0, v25

    int-to-long v13, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v9}, Lcom/android/mms/ui/TransferContentActivity;->showLowMemoryDialog(JJ)V

    cmp-long v25, v13, v8

    if-gtz v25, :cond_0

    :cond_4
    invoke-static/range {v19 .. v19}, Lcom/android/mms/data/Conversation;->getRecipientByList(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    const-string v25, "[,;\u060c\u061b]"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v3, v16

    array-length v12, v3

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_9

    aget-object v18, v3, v11

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/TransferContentActivity;->mType:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "image/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/TransferContentActivity;->mExtraData:Landroid/os/Bundle;

    move-object/from16 v25, v0

    const-string v26, "android.intent.extra.STREAM"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/net/Uri;

    if-eqz v23, :cond_7

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/freemessage/Utils;->getPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v13

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v8, v9}, Lcom/android/mms/ui/TransferContentActivity;->showLowMemoryDialog(JJ)V

    cmp-long v25, v13, v8

    if-lez v25, :cond_4

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/TransferContentActivity;->mExtraData:Landroid/os/Bundle;

    move-object/from16 v25, v0

    const-string v26, "android.intent.extra.STREAM"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v24

    const-wide/16 v21, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/mms/freemessage/Utils;->getPathFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v25

    add-long v21, v21, v25

    goto :goto_4

    :cond_8
    move-wide/from16 v13, v21

    goto :goto_3

    :cond_9
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/TransferContentActivity;->sendIntentToLauncherActivity(Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v10, Landroid/content/Intent;

    const-class v25, Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v25, "android.intent.action.SEND"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/TransferContentActivity;->mRecipient:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/TransferContentActivity;->mRecipient:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_a

    const-string v25, "sendfileto"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/TransferContentActivity;->mRecipient:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_a
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/TransferContentActivity;->mType:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mms/ui/TransferContentActivity;->mNew:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/TransferContentActivity;->intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/TransferContentActivity;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/TransferContentActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/TransferContentActivity;->mAction:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/TransferContentActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/TransferContentActivity;->mExtraData:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/mms/ui/TransferContentActivity;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/TransferContentActivity;->mType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/TransferContentActivity;->intent:Landroid/content/Intent;

    const-string v4, "address"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/TransferContentActivity;->mAction:Ljava/lang/String;

    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/TransferContentActivity;->mAction:Ljava/lang/String;

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/TransferContentActivity;->sendIntentToLauncherActivity(Ljava/util/ArrayList;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/TransferContentActivity;->mFiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/mms/ui/TransferContentActivity;->mNew:Z

    if-eqz v3, :cond_2

    :cond_2
    iput-boolean v5, p0, Lcom/android/mms/ui/TransferContentActivity;->mNew:Z

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isFreeMessageServiceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/TransferContentActivity;->creatDialog()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isRcsServiceEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/mms/ui/TransferContentActivity;->handleIntentRequsetParticipant()V

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/TransferContentActivity;->sendIntentToLauncherActivity(Ljava/util/ArrayList;Z)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public sendIntentToLauncherActivity(Ljava/util/ArrayList;Z)V
    .locals 2
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/mms/ui/TransferContentActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/TransferContentActivity;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "transfercontants"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/TransferContentActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "sendfileto"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public showAddAttachmentDialog(ZI)V
    .locals 11
    .param p1    # Z
    .param p2    # I

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    const v6, 0x7f0c014b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/TransferContentActivity;->mAttachDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportContextAwareness()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/IconWeightListAdapter;->loadWeight(Landroid/content/Context;)V

    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0c0023

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/TransferContentActivity;->createAttachmentTypeAdapter(ZI)Lcom/android/mms/ui/IconListAdapter;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGridViewOnAddAttachmentMenu()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040055

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0b01b8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v6, Lcom/android/mms/ui/TransferContentActivity$6;

    invoke-direct {v6, p0, v0, p1}, Lcom/android/mms/ui/TransferContentActivity$6;-><init>(Lcom/android/mms/ui/TransferContentActivity;Lcom/android/mms/ui/IconListAdapter;Z)V

    invoke-virtual {v1, v6}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v6, Lcom/android/mms/ui/TransferContentActivity$7;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/TransferContentActivity$7;-><init>(Lcom/android/mms/ui/TransferContentActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :goto_1
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/TransferContentActivity;->mAttachDialog:Landroid/app/AlertDialog;

    iget-object v6, p0, Lcom/android/mms/ui/TransferContentActivity;->mAttachDialog:Landroid/app/AlertDialog;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v6, p0, Lcom/android/mms/ui/TransferContentActivity;->mAttachDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/mms/ui/TransferContentActivity$9;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/TransferContentActivity$9;-><init>(Lcom/android/mms/ui/TransferContentActivity;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v6, p0, Lcom/android/mms/ui/TransferContentActivity;->mAttachDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    iget-object v6, p0, Lcom/android/mms/ui/TransferContentActivity;->mAttachDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v10, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v6, p0, Lcom/android/mms/ui/TransferContentActivity;->mAttachDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto/16 :goto_0

    :cond_3
    new-instance v6, Lcom/android/mms/ui/TransferContentActivity$8;

    invoke-direct {v6, p0, v0, p1}, Lcom/android/mms/ui/TransferContentActivity$8;-><init>(Lcom/android/mms/ui/TransferContentActivity;Lcom/android/mms/ui/IconListAdapter;Z)V

    invoke-virtual {v2, v0, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method
