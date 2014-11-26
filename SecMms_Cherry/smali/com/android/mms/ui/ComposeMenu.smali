.class public Lcom/android/mms/ui/ComposeMenu;
.super Ljava/lang/Object;
.source "ComposeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;,
        Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;,
        Lcom/android/mms/ui/ComposeMenu$SendNowListener;,
        Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;
    }
.end annotation


# static fields
.field public static final CONTENT_RESTRICTION:I = -0x5

.field public static final IMAGE_TOO_LARGE:I = -0x4

.field private static final MAX_PICK_CONTACT:I = 0xc8

.field private static final MENU_ACTIONBAR_ATTACH_BUTTON:I = 0x421

.field private static final MENU_ACTIONBAR_DELETE_CANCEL_BUTTON:I = 0x423

.field private static final MENU_ACTIONBAR_DELETE_DONE_BUTTON:I = 0x422

.field private static final MENU_ACTIONBAR_RESERVEMSG:I = 0x428

.field private static final MENU_ADDPARTICIPANT:I = 0x459

.field private static final MENU_ADDPARTICIPANT_RCS:I = 0x46b

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x403

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS_MULTIPLE:I = 0x406

.field private static final MENU_ADD_NAMECARD:I = 0x42c

.field private static final MENU_ADD_PRIORITY_SENDER:I = 0x453

.field private static final MENU_ADD_PRIORITY_SENDER_MULTIPLE:I = 0x463

.field public static final MENU_ADD_RECIPIENT_MESSAGE:I = 0x43a

.field private static final MENU_ADD_SLIDE:I = 0x41d

.field private static final MENU_ADD_SUBJECT:I = 0x3e8

.field private static final MENU_ADD_TEXT:I = 0x449

.field private static final MENU_ATTACHMENT_LIST:I = 0x40b

.field private static final MENU_ATTACH_MENU:I = 0x42e

.field public static final MENU_BLOCK_NUMBER_SETTING:I = 0x427

.field private static final MENU_BLOCK_NUMBER_SETTING_MULTIPLE:I = 0x465

.field private static final MENU_CALL_MESSAGE:I = 0x458

.field private static final MENU_CALL_RECIPIENT:I = 0x3ee

.field public static final MENU_CALL_RECIPIENT_ICON:I = 0x440

.field private static final MENU_CANCEL_MESSAGE:I = 0x42a

.field private static final MENU_CHANGEMESSAGETORCS:I = 0x468

.field private static final MENU_CHANGERCSTOMESSAGE:I = 0x467

.field private static final MENU_CHANGE_CHAT_TO_MSG:I = 0x45b

.field private static final MENU_CHANGE_MSG_TO_CHAT:I = 0x45c

.field private static final MENU_CLOSE_CHAT:I = 0x45e

.field private static final MENU_CMAS_FORWARD_MESSAGE:I = 0x44e

.field private static final MENU_CMAS_MORE:I = 0x420

.field private static final MENU_COMBINE_AND_FORWARD:I = 0x448

.field public static final MENU_COMPOSE_NEW:I = 0x43c

.field private static final MENU_CONNECT_URL:I = 0x44d

.field private static final MENU_CONVERSATION_LIST:I = 0x3ef

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0x400

.field private static final MENU_COPY_MESSAGE_TO_SIM:I = 0x407

.field private static final MENU_COPY_MESSAGE_TO_SIM2:I = 0x460

.field private static final MENU_COPY_TO_SDCARD:I = 0x408

.field private static final MENU_DELETE_MESSAGE:I = 0x3fa

.field public static final MENU_DELETE_MESSAGES_ICON:I = 0x436

.field private static final MENU_DELETE_THREAD:I = 0x3ea

.field private static final MENU_DISCARD:I = 0x3ec

.field private static final MENU_DOWNLOAD_FORCELY:I = 0x434

.field private static final MENU_EDIT_MESSAGE:I = 0x3f6

.field private static final MENU_EDIT_RCS_TO_MMS:I = 0x469

.field private static final MENU_FILE_HISTORY:I = 0x45d

.field public static final MENU_FONT_SIZE:I = 0x451

.field private static final MENU_FORWARD_MESSAGE:I = 0x3fd

.field private static final MENU_GROUP_CHAT_TOPIC:I = 0x45a

.field private static final MENU_INSERT_SMILEY:I = 0x402

.field private static final MENU_LAYOUT:I = 0x41c

.field private static final MENU_LOCK_MESSAGE:I = 0x404

.field private static final MENU_MESSAGE_SHARE:I = 0x44b

.field private static final MENU_MULTIPLE_COPY_TO_SIM:I = 0x445

.field private static final MENU_MULTIPLE_COPY_TO_SIM2:I = 0x461

.field private static final MENU_MULTI_CANCEL:I = 0x42f

.field private static final MENU_MULTI_LOCK_MESSAGE:I = 0x3eb

.field private static final MENU_MULTI_OK:I = 0x430

.field private static final MENU_PAGE_DURATION:I = 0x410

.field private static final MENU_PHOTORING_CALL_RECIPIENT:I = 0x457

.field public static final MENU_PREFERENCES:I = 0x43e

.field private static final MENU_PREVIEW_SLIDESHOW:I = 0x409

.field private static final MENU_PRIORITY_LEVEL:I = 0x42d

.field private static final MENU_REFRESH_LOCATION:I = 0x455

.field private static final MENU_REMOVE_PRIORITY_SENDER:I = 0x456

.field private static final MENU_REMOVE_PRIORITY_SENDER_MULTIPLE:I = 0x464

.field private static final MENU_REMOVE_SLIDE:I = 0x41e

.field private static final MENU_REMOVE_SUBJECT:I = 0x3f2

.field private static final MENU_REPLY_TO_ALL:I = 0x425

.field private static final MENU_REPLY_TO_SENDER:I = 0x424

.field public static final MENU_REPORT_AS_SPAM:I = 0x450

.field private static final MENU_RESEND_MESSAGE:I = 0x401

.field private static final MENU_SAVE_CONV:I = 0x441

.field public static final MENU_SAVE_DRAFT_MESSAGE:I = 0x44b

.field private static final MENU_SAVE_RESTORE_SDCARD:I = 0x442

.field public static final MENU_SAVE_RINGTONE:I = 0x43b

.field private static final MENU_SEARCH:I = 0x3fb

.field public static final MENU_SEARCH_SPLIT:I = 0x43d

.field public static final MENU_SELECT_TEXT:I = 0x439

.field private static final MENU_SEND:I = 0x3ed

.field private static final MENU_SEND_NOW:I = 0x429

.field public static final MENU_SET_AS_RINGTONE:I = 0x44f

.field private static final MENU_TEXT_TEMPLATES:I = 0x3f1

.field private static final MENU_TRANSLATE:I = 0x40c

.field public static final MENU_TRANSLATOR_DIALOG:I = 0x40a

.field public static final MENU_UNBLOCK_NUMBER_SETTING:I = 0x435

.field private static final MENU_UNBLOCK_NUMBER_SETTING_MULTIPLE:I = 0x466

.field private static final MENU_UNLOCK_MESSAGE:I = 0x405

.field private static final MENU_VIDEO_CALL_RECIPIENT:I = 0x3f3

.field private static final MENU_VIEW_BY:I = 0x462

.field private static final MENU_VIEW_CONTACT:I = 0x3f4

.field private static final MENU_VIEW_GROUP_MESSAGE_RECIPIENTS:I = 0x454

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0x3f9

.field private static final MENU_VIEW_SLIDESHOW:I = 0x44c

.field private static final MENU__CLOSE_CHAT:I = 0x46a

.field public static final MESSAGE_SIZE_EXCEEDED:I = -0x2

.field private static final OFFSET:I = 0x3e8

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/ComposerMenu"

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final UNSUPPORTED_TYPE:I = -0x3

.field private static mIsSearchMode:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field private mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mIsDelayForSearch:Z

.field private mMaximumSlideElementDuration:I

.field private mMsgListItem:Lcom/android/mms/ui/MessageListItem;

.field private mNumberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field protected mSendNowConfirmDialog:Landroid/content/DialogInterface;

.field private mSendNowDeliveryReport:Z

.field private mSendNowLocked:Z

.field private mSendNowReadReport:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSendSimSlot:I

.field private mSentTimeStamp:Ljava/lang/String;

.field private mTempMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;

.field private m_lOldMenuTouchTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 5
    .param p1    # Lcom/android/mms/ui/ComposeMessageFragment;

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mComposerAttachmentHandler:Lcom/android/mms/util/HandleComposerAttachment;

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;

    iput-wide v3, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;

    iput-wide v3, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowDeliveryReport:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowReadReport:Z

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mSentTimeStamp:Ljava/lang/String;

    const/16 v0, 0x3e7

    iput v0, p0, Lcom/android/mms/ui/ComposeMenu;->mMaximumSlideElementDuration:I

    iput v2, p0, Lcom/android/mms/ui/ComposeMenu;->mSendSimSlot:I

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    iput-wide v3, p0, Lcom/android/mms/ui/ComposeMenu;->m_lOldMenuTouchTime:J

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-void
.end method

.method private AddFreeMsgRecipent()V
    .locals 11

    const/4 v9, 0x0

    const/4 v6, 0x0

    new-instance v6, Landroid/content/Intent;

    const-string v8, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    invoke-virtual {v7, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/Contact;

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v4, v8, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v1

    const-string v8, ";"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "excepted_contacts_list"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "additional"

    const-string v9, "freechat-multi"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "additional2"

    const-string v9, "freechat-only-multi"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v8

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v9

    if-le v8, v9, :cond_2

    const-string v8, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    const-string v8, "FromMMS"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const/16 v9, 0x3e8

    invoke-static {v8, v9}, Lcom/android/mms/ui/MessageUtils;->doBoost(Landroid/content/Context;I)V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v9, 0x3c

    invoke-virtual {v8, v6, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    const-string v8, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getFreeMessageAdhocGroupSizeMax()I

    move-result v9

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->size()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method private AddRcsRecipent()V
    .locals 13

    const-string v0, "additional2"

    const-string v1, "rcs-only-multi"

    const-string v3, "show-chat-first"

    const-string v2, "rcs-multi"

    move-object v5, v2

    const/4 v8, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v10, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v9}, Lcom/android/mms/data/ContactList;->size()I

    move-result v10

    if-ge v7, v10, :cond_1

    invoke-virtual {v9, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/data/Contact;

    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    invoke-static {v4, v10}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/mms/data/ContactList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v7, v10, :cond_0

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const-string v10, ";"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v10, "excepted_contacts_list"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v5, v1

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    :cond_2
    const-string v10, "additional"

    const-string v11, "email-phone-multi"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v10

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v11

    if-le v10, v11, :cond_4

    const-string v10, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->getPickContactLimit()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    const-string v10, "FromMMS"

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const/16 v11, 0x3e8

    invoke-static {v10, v11}, Lcom/android/mms/ui/MessageUtils;->doBoost(Landroid/content/Context;I)V

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v11, 0x3c

    invoke-virtual {v10, v8, v11}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3
    const-string v10, "additional"

    const-string v11, "phone-multi"

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    const-string v10, "maxRecipientCount"

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->getMaxAdhocGroupSize()I

    move-result v11

    invoke-virtual {v9}, Lcom/android/mms/data/ContactList;->size()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3
.end method

.method private AddRecipent()V
    .locals 17

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v14, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v13, "exit_on_sent"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v13, "add_recipient_message"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->showGroupRecipientBanner(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->saveMultiDraft()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    if-ge v6, v13, :cond_1

    invoke-virtual {v3, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/mms/data/Contact;

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ge v6, v13, :cond_0

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v13, "recipients"

    invoke-virtual {v2, v13, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getReservationTime()J

    move-result-wide v8

    const-string v13, "reservationtime"

    invoke-virtual {v2, v13, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->resetReservedSettings()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v14, "com.android.mms.ui.ReplyMessageActivity"

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v13, "recipients"

    const-string v14, ""

    invoke-virtual {v2, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    new-array v11, v13, [Ljava/lang/String;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v11

    :cond_4
    const/4 v6, 0x0

    :goto_3
    array-length v13, v11

    if-ge v6, v13, :cond_5

    aget-object v13, v11, v6

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v13}, Lcom/android/mms/ui/ComposeMessageFragment;->getReservationTime()J

    move-result-wide v8

    new-instance v10, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v15}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/ui/ComposeMessageFragment;)V

    const/4 v13, 0x0

    invoke-virtual {v10, v1, v13, v8, v9}, Lcom/android/mms/ui/MessageOptions;->openNewComposer(Ljava/util/ArrayList;ZJ)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ComposeMenu;)J
    .locals 2
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/ComposeMenu;J)J
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ComposeMenu;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSentTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSentTimeStamp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/ComposeMenu;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowDeliveryReport:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowDeliveryReport:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ComposeMenu;)Z
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowReadReport:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowReadReport:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ComposeMenu;)I
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendSimSlot:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/ComposeMenu;I)I
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendSimSlot:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/ComposeMenu;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    return p1
.end method

.method static synthetic access$1802(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/MessageOptions;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/MessageOptions;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # Lcom/android/mms/ui/MessageOptions;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # Lcom/android/mms/ui/MessageItem;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/MessageListItem;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ComposeMenu;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ComposeMenu;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/ComposeMenu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ComposeMenu;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/ComposeMenu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ComposeMenu;)J
    .locals 2
    .param p0    # Lcom/android/mms/ui/ComposeMenu;

    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/ComposeMenu;J)J
    .locals 0
    .param p0    # Lcom/android/mms/ui/ComposeMenu;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMenu;->mSendNowThreadId:J

    return-wide p1
.end method

.method private buildAddAddressToContactMenuItem(Landroid/view/Menu;)V
    .locals 10
    .param p1    # Landroid/view/Menu;

    const v9, 0x7f0c004b

    const v8, 0x7f0200ea

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ne v4, v7, :cond_6

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/16 v5, 0x403

    invoke-interface {p1, v6, v5, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    :cond_5
    :goto_1
    return-void

    :cond_6
    if-le v4, v7, :cond_5

    const/16 v5, 0x406

    invoke-interface {p1, v6, v5, v6, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private buildAddAndRemoveToSpamNumberMenuItem(Landroid/view/Menu;)V
    .locals 14
    .param p1    # Landroid/view/Menu;

    const v13, 0x7f02010d

    const v12, 0x7f0200ff

    const/16 v11, 0x427

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/util/TelephonyUtils;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-ne v5, v10, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f0c02b7

    invoke-interface {p1, v10, v11, v9, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f0200eb

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v2, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/util/TelephonyUtils;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x435

    const v8, 0x7f0c03f4

    invoke-interface {p1, v10, v7, v9, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v7

    if-nez v7, :cond_2

    const v7, 0x7f0c03ed

    invoke-interface {p1, v10, v11, v9, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    if-le v5, v10, :cond_2

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_8

    const/16 v7, 0x465

    const v8, 0x7f0c03ed

    invoke-interface {p1, v10, v7, v9, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_8
    if-lez v0, :cond_2

    const/16 v7, 0x466

    const v8, 0x7f0c03f4

    invoke-interface {p1, v10, v7, v9, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method private getDrmMimeMenuStringRsrc(J)I
    .locals 1
    .param p1    # J

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c035b

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMaxRecipientSmsMms()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isMms()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsMaxRecipient()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v0

    goto :goto_0
.end method

.method private getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;
    .locals 11
    .param p1    # Lcom/android/mms/ui/MessageListItem;

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object v2, p1

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x1

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v9

    iget v9, v9, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    if-ne v9, v10, :cond_4

    const v9, 0x7f0b0263

    invoke-virtual {v2, v9}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    :cond_2
    const/4 v9, -0x1

    if-ne v4, v9, :cond_3

    const v9, 0x7f0b00c6

    invoke-virtual {v2, v9}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    :cond_3
    if-eq v4, v3, :cond_0

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    check-cast v5, Landroid/text/Spanned;

    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v5, v1, v0, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    array-length v9, v7

    if-ne v9, v10, :cond_0

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_0

    :cond_4
    const v9, 0x7f0b026c

    invoke-virtual {v2, v9}, Lcom/android/mms/ui/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    goto :goto_1
.end method

.method private isAvaliableSelectTextMenu(Lcom/android/mms/ui/MessageItem;)Z
    .locals 2
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageListItem;)V
    .locals 10
    .param p1    # Landroid/view/ContextMenu;
    .param p2    # Landroid/view/View;
    .param p3    # Lcom/android/mms/ui/MessageListItem;

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p3}, Lcom/android/mms/ui/ComposeMenu;->getSelectedUriFromMessageList(Lcom/android/mms/ui/MessageListItem;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {v4, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    :cond_0
    return-void
.end method

.method public buildAddAndRemoveToPrioritySenderMenuItem(Landroid/view/Menu;)V
    .locals 14
    .param p1    # Landroid/view/Menu;

    const v13, 0x7f0c044c

    const v12, 0x7f0c044b

    const/16 v11, 0x19

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    const/4 v6, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isNumberCanAddToPrioritySender(Lcom/android/mms/data/Contact;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-ne v6, v10, :cond_4

    invoke-virtual {v2, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/Contact;

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/mms/prioritysender/PrioritySenderCache;->isPrioritySender(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x456

    invoke-interface {p1, v9, v8, v9, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {v5}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getCount()I

    move-result v8

    if-ge v8, v11, :cond_2

    const/16 v8, 0x453

    invoke-interface {p1, v9, v8, v9, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    if-le v6, v10, :cond_2

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/android/mms/prioritysender/PrioritySenderCache;->isPrioritySender(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_7

    invoke-virtual {v5}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getCount()I

    move-result v8

    if-ge v8, v11, :cond_7

    const/16 v8, 0x463

    invoke-interface {p1, v9, v8, v9, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_7
    if-lez v0, :cond_2

    const/16 v8, 0x464

    invoke-interface {p1, v9, v8, v9, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public closeSearchView(Z)V
    .locals 3
    .param p1    # Z

    const-string v0, "Mms/ComposerMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeSearchView invalidate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMenu;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method public confirmCmasForwardMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/mms/ui/MessageOptions;
    .param p3    # Lcom/android/mms/ui/MessageItem;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0400

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/mms/ui/ComposeMenu$CmasForwardListener;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public confirmRegisterAsSpamNumber(Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;)V
    .locals 7
    .param p1    # Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v5, 0x7f04000d

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b0054

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c03ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$8;

    invoke-direct {v4, p0, p1, v2}, Lcom/android/mms/ui/ComposeMenu$8;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c03ed

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    invoke-virtual {v1, v4, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public isFreeMessageSystemMessage(Lcom/android/mms/ui/MessageItem;)Z
    .locals 4
    .param p1    # Lcom/android/mms/ui/MessageItem;

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isSearchMode()Z
    .locals 3

    const-string v0, "Mms/ComposerMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSearchMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/android/mms/ui/MessageItem;)V
    .locals 15
    .param p1    # Landroid/view/ContextMenu;
    .param p2    # Landroid/view/View;
    .param p3    # Lcom/android/mms/ui/MessageItem;

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDelayedMessage()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v10

    if-nez v10, :cond_0

    :cond_2
    const v10, 0x7f0c001d

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    new-instance v5, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {v5, p0, v0, v1}, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMenu;->isFreeMessageSystemMessage(Lcom/android/mms/ui/MessageItem;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    const/16 v11, 0x3fa

    const/4 v12, 0x0

    const v13, 0x7f0c042a

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    const/16 v11, 0x3fa

    const/4 v12, 0x0

    const v13, 0x7f0c042a

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_5
    const/4 v10, 0x1

    const/16 v11, 0x3fa

    const/4 v12, 0x0

    const v13, 0x7f0c042a

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v10, 0x0

    const/16 v11, 0x400

    const/4 v12, 0x0

    const v13, 0x7f0c042b

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    const/16 v11, 0x3fd

    const/4 v12, 0x0

    const v13, 0x7f0c0012

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_6
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    const/4 v10, 0x1

    const/16 v11, 0x3fa

    const/4 v12, 0x0

    const v13, 0x7f0c042a

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_8

    const/4 v10, 0x0

    const/16 v11, 0x3f9

    const/4 v12, 0x0

    const v13, 0x7f0c000e

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    const/16 v11, 0x44e

    const/4 v12, 0x0

    const v13, 0x7f0c0012

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_9
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v10

    if-eqz v10, :cond_33

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFailed()Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    const/4 v10, 0x1

    const/16 v11, 0x401

    const/4 v12, 0x0

    const v13, 0x7f0c0093

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_c
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    const/4 v10, 0x1

    const/16 v11, 0x424

    const/4 v12, 0x0

    const v13, 0x7f0c02e2

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_d
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    const/16 v11, 0x429

    const/4 v12, 0x0

    const v13, 0x7f0c02eb

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v10, 0x1

    const/16 v11, 0x42a

    const/4 v12, 0x0

    const v13, 0x7f0c02ec

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_e
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isNoReservedMessage()Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    const/16 v11, 0x3fa

    const/4 v12, 0x0

    const v13, 0x7f0c042a

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_f
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v4, 0x0

    new-instance v4, Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v11, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x20000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v10, "msgId"

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v11

    invoke-virtual {v4, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v10, "thread_id"

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v11

    invoke-virtual {v4, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v10

    if-nez v10, :cond_10

    const/4 v10, 0x0

    const/16 v11, 0x44c

    const/4 v12, 0x0

    const v13, 0x7f0c03a7

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v10

    if-eqz v10, :cond_36

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v10

    const/16 v11, 0x69

    if-ge v10, v11, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_11
    const/4 v10, 0x0

    const/16 v11, 0x400

    const/4 v12, 0x0

    const v13, 0x7f0c042b

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_12
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v10

    if-nez v10, :cond_14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-static/range {p3 .. p3}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v10

    if-nez v10, :cond_14

    :cond_13
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v10

    if-nez v10, :cond_14

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v10

    const/16 v11, 0x69

    if-ge v10, v11, :cond_14

    const/4 v10, 0x1

    const/16 v11, 0x3fd

    const/4 v12, 0x0

    const v13, 0x7f0c0012

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_14
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v10

    if-nez v10, :cond_15

    move-object/from16 v0, p3

    iget-boolean v10, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v10, :cond_37

    const/4 v10, 0x1

    const/16 v11, 0x405

    const/4 v12, 0x0

    const v13, 0x7f0c042d

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_15
    :goto_3
    if-eqz v6, :cond_18

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v10

    if-nez v10, :cond_16

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isScheduledMessage()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v10

    if-eqz v10, :cond_18

    :cond_16
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v10

    if-nez v10, :cond_18

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v10

    if-nez v10, :cond_18

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v10

    const/16 v11, 0x69

    if-ge v10, v11, :cond_18

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFreeMessageFt()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isRcsFt()Z

    move-result v10

    if-nez v10, :cond_18

    :cond_17
    const/4 v10, 0x1

    const/16 v11, 0x3f6

    const/4 v12, 0x0

    const v13, 0x7f0c0092

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_18
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplyAll()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-static {v10, v0, v11}, Lcom/android/mms/ui/MessageUtils;->getReplyAllCount(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)Z

    move-result v10

    if-eqz v10, :cond_19

    const/4 v10, 0x1

    const/16 v11, 0x425

    const/4 v12, 0x0

    const v13, 0x7f0c01ab

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_19
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v10, :cond_38

    const/4 v10, 0x0

    const/16 v11, 0x40b

    const/4 v12, 0x0

    const v13, 0x7f0c011f

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1a
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v10

    if-nez v10, :cond_1b

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v10

    if-nez v10, :cond_1b

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/mms/MmsConfig;->getEnableVideoCall(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v10

    if-nez v10, :cond_1b

    const/4 v10, 0x0

    const/16 v11, 0x3f3

    const/4 v12, 0x0

    const v13, 0x7f0c023c

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-static/range {p3 .. p3}, Lcom/android/mms/util/TelephonyUtils;->isEnableLinkUrlService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x1

    const/16 v11, 0x44d

    const/4 v12, 0x0

    const v13, 0x7f0c01a4

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_1c
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v10

    if-eqz v10, :cond_23

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v10

    if-eqz v10, :cond_22

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v10

    if-nez v10, :cond_22

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isNoReservedMessage()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_22

    :cond_1d
    if-nez v2, :cond_22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsTidMessage()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-static/range {p3 .. p3}, Lcom/android/mms/util/TelephonyUtils;->isEnableSpecificTidService(Lcom/android/mms/ui/MessageItem;)Z

    move-result v10

    if-nez v10, :cond_22

    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDualStandBy()Z

    move-result v10

    if-nez v10, :cond_20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v10

    const/4 v11, 0x1

    if-gt v10, v11, :cond_20

    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSTwochipOnQCOM()Z

    move-result v10

    if-nez v10, :cond_20

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSDSOnechipOnQCOM()Z

    move-result v10

    if-eqz v10, :cond_39

    :cond_20
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/mms/util/TelephonyUtils;->isSimReady(I)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;I)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v10, 0x1

    const/16 v11, 0x407

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageUtils;->getCopyToSimMenuName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_21
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/mms/util/TelephonyUtils;->isSimReady(I)Z

    move-result v10

    if-eqz v10, :cond_22

    const/4 v10, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;I)Z

    move-result v10

    if-eqz v10, :cond_22

    const/4 v10, 0x1

    const/16 v11, 0x460

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/android/mms/ui/MessageUtils;->getCopyToSimMenuName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_22
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-eqz v10, :cond_23

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_23

    const/4 v10, 0x1

    const/16 v11, 0x441

    const/4 v12, 0x0

    const v13, 0x7f0c038b

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_23
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v10

    if-eqz v10, :cond_25

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v10

    if-nez v10, :cond_25

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-static/range {p3 .. p3}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isNoReservedMessage()Z

    move-result v10

    if-eqz v10, :cond_25

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_24

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_25

    :cond_24
    const/4 v10, 0x0

    const/16 v11, 0x408

    const/4 v12, 0x0

    const v13, 0x7f0c0276

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_25
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageShare()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v10

    if-nez v10, :cond_26

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v10

    if-eqz v10, :cond_27

    :cond_26
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v10

    if-nez v10, :cond_27

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/android/mms/ui/MessageUtils;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_27

    const/4 v10, 0x0

    const/16 v11, 0x44b

    const/4 v12, 0x0

    const v13, 0x7f0c0129

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_27
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v10

    if-eqz v10, :cond_28

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v10

    if-eqz v10, :cond_28

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v10

    if-lez v10, :cond_28

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v10

    if-nez v10, :cond_28

    if-eqz v6, :cond_28

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_28

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/data/Contact;

    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_28

    const/4 v10, 0x1

    const/16 v11, 0x427

    const/4 v12, 0x0

    const v13, 0x7f0c02b7

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_28
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v10

    if-nez v10, :cond_29

    const/4 v10, 0x0

    const/16 v11, 0x3f9

    const/4 v12, 0x0

    const v13, 0x7f0c000e

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_29
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReportAsSpam()Z

    move-result v10

    if-eqz v10, :cond_2a

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v10

    if-eqz v10, :cond_2a

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v10

    if-eqz v10, :cond_2a

    const/4 v10, 0x1

    const/16 v11, 0x450

    const/4 v12, 0x0

    const v13, 0x7f0c04d1

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v10

    if-eqz v10, :cond_2b

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v10

    if-nez v10, :cond_2b

    const/4 v10, 0x1

    const/16 v11, 0x434

    const/4 v12, 0x0

    const v13, 0x7f0c0013

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2b
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableSaveRingtone()Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v10

    if-eqz v10, :cond_2c

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v10

    if-eqz v10, :cond_2c

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v10, v11, v12}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v10

    if-eqz v10, :cond_2c

    move-object/from16 v0, p3

    iget-wide v10, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/ComposeMenu;->getDrmMimeMenuStringRsrc(J)I

    move-result v8

    if-lez v8, :cond_2c

    const/4 v10, 0x0

    const/16 v11, 0x43b

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_2c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v10

    if-eqz v10, :cond_30

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v10

    if-nez v10, :cond_2d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v10

    if-nez v10, :cond_2d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v10

    if-eqz v10, :cond_2e

    :cond_2d
    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2f

    :cond_2e
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v10

    if-eqz v10, :cond_30

    invoke-static/range {p3 .. p3}, Lcom/android/mms/ui/TranslateManager;->isTranslatableMms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v10

    if-eqz v10, :cond_30

    :cond_2f
    const/4 v10, 0x0

    const/16 v11, 0x40c

    const/4 v12, 0x0

    const v13, 0x7f0c0180

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    sget-object v10, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    if-nez v10, :cond_30

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "caller"

    const-string v11, "msg"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v10, 0x40c

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_30
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuSetAsRingtone()Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v10

    if-eqz v10, :cond_31

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v10

    if-eqz v10, :cond_31

    move-object/from16 v0, p3

    iget-object v10, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->hasAudioInSlideshow()Z

    move-result v10

    if-eqz v10, :cond_31

    const/4 v10, 0x0

    const/16 v11, 0x44f

    const/4 v12, 0x0

    const v13, 0x7f0c0422

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_31
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSpamReport4Kor()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v10

    if-eqz v10, :cond_32

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_32

    const/4 v10, 0x0

    const/16 v11, 0x450

    const/4 v12, 0x0

    const v13, 0x7f0c04d1

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_32
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p1

    invoke-static {v10, v0}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_33
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v10

    if-eqz v10, :cond_34

    const/4 v10, 0x1

    const/16 v11, 0x401

    const/4 v12, 0x0

    const v13, 0x7f0c0093

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_34
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isGroupChatMessage()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isRcsGroupChatMessage()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isFreeMessageChat()Z

    move-result v10

    if-nez v10, :cond_35

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isRcsChat()Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_35
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v10

    const/16 v11, 0x69

    if-ge v10, v11, :cond_d

    const/4 v10, 0x0

    const/16 v11, 0x401

    const/4 v12, 0x0

    const v13, 0x7f0c052c

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_36
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getBodyAll()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->getFreeMessageType()I

    move-result v10

    const/16 v11, 0x69

    if-ge v10, v11, :cond_12

    const/4 v10, 0x0

    const/16 v11, 0x400

    const/4 v12, 0x0

    const v13, 0x7f0c042b

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_37
    const/4 v10, 0x1

    const/16 v11, 0x404

    const/4 v12, 0x0

    const v13, 0x7f0c042c

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_38
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v10

    if-eqz v10, :cond_1a

    :try_start_0
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    sget-object v11, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v7

    if-eqz v7, :cond_1a

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v10

    if-nez v10, :cond_1a

    const/4 v10, 0x0

    const/16 v11, 0x40b

    const/4 v12, 0x0

    const v13, 0x7f0c011f

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v3

    const-string v10, "Mms/ComposerMenu"

    invoke-virtual {v3}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_39
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_22

    invoke-static/range {p3 .. p3}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v10

    if-eqz v10, :cond_22

    const/4 v10, 0x1

    const/16 v11, 0x407

    const/4 v12, 0x0

    const v13, 0x7f0c0019

    move-object/from16 v0, p1

    invoke-interface {v0, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_5
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 47
    .param p1    # Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->disableMultiMode(Z)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mIsHardKeyboardOpen:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSipWithHardKeypad()V

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v40

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    move/from16 v0, v40

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    :cond_0
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isForwardedMessage()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v25, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x34000000

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_2

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    const/16 v7, 0xd

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->previewSlideshow()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v4, "ASUB"

    invoke-static {v3, v4}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v45

    if-eqz v45, :cond_6

    :try_start_0
    const-string v3, ""

    const/4 v4, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v3, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v30, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v32

    if-eqz v32, :cond_5

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    :cond_5
    :goto_3
    sget-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mOnSipUpListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v3}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$1;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    const-wide/16 v7, 0x64

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v22

    const-string v3, "Mms/ComposerMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ExceedMessageSizeException "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ExceedMessageSizeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v29

    invoke-virtual {v3, v10, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showErrorPopup(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->showSubjectEditor(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    if-lez v24, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(I)V

    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getHandleComposerAttachment()Lcom/android/mms/util/HandleComposerAttachment;

    move-result-object v3

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/android/mms/util/HandleComposerAttachment;->startActivityForAddText(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/data/Contact;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v15}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    :cond_b
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance v3, Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7, v8}, Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;-><init>(Lcom/android/mms/ui/ComposeMenu;J)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/ComposeMenu;->confirmRegisterAsSpamNumber(Lcom/android/mms/ui/ComposeMenu$DeleteSpamThreadListener;)V

    goto :goto_4

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v13, v7, v8, v4}, Lcom/android/mms/glance/GlanceUtils;->addPrioritySender(Landroid/content/Context;Ljava/lang/String;JZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c0497

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v12, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->updatePrioritySenderList()V

    :cond_d
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v37

    invoke-static {v3, v0}, Lcom/android/mms/glance/GlanceUtils;->deletePrioritySender(Landroid/content/Context;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c0499

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v36, v8, v9

    invoke-virtual {v4, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/android/mms/ui/ConversationComposer;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->updatePrioritySenderList()V

    :cond_e
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/mms/data/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {v43 .. v43}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c03f1

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_f
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v4, "DISC"

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->discard()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v40

    const/4 v3, 0x2

    move/from16 v0, v40

    if-ne v0, v3, :cond_11

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->setFromSplitDiscard(Z)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/util/NetworkConnectionUtils;->isNetWorkConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->requestEndChatInComposer(Ljava/lang/String;)V

    :cond_12
    :goto_5
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->makeCannotCloseChatDialog()V

    goto :goto_5

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static/range {v18 .. v18}, Lcom/android/mms/rcs/RcsQuery;->closeRcsChat(Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static/range {v18 .. v18}, Lcom/android/mms/rcs/transaction/ActionsFactory;->closeChat(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->discard()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v31

    const/4 v3, 0x2

    move/from16 v0, v31

    if-ne v0, v3, :cond_15

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->setFromSplitDiscard(Z)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSending()Z

    move-result v3

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->confirmSendMessageIfNeeded(I)V

    :cond_16
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->onSearchRequested()Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_f
    invoke-static {}, Lcom/android/mms/util/Recycler;->getRecycleStatus()Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "Mms/ComposerMenu"

    const-string v4, "progressing recycle. ignore delete event."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0187

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->removeAnimationForSingleMsg()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getBackgroundQueryHandler()Lcom/android/mms/ui/ComposeMessageFragment$BackgroundQueryHandler;

    move-result-object v3

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/16 v4, 0x2538

    invoke-static {v3, v7, v8, v4}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraftAndReset(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    goto :goto_6

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x3

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startQueryMultiLockedMessages()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$2;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/ui/ComposeMenu;->m_lOldMenuTouchTime:J

    sub-long v3, v33, v3

    const-wide/16 v7, 0x3e8

    cmp-long v3, v3, v7

    if-lez v3, :cond_1b

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/ComposeMenu;->m_lOldMenuTouchTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->dialRecipient()V

    :cond_1b
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshLocation()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->videoCallRecipient()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isImsRegistered(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->photoringCallRecipient()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->callMessageCallRecipient()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showSmileyDialog()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v4, "SMIL"

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v27

    if-eqz v27, :cond_1f

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v21

    new-instance v25, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v3, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1e

    sget-object v3, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1e
    const/high16 v3, 0x80000

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z

    :cond_1f
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showQuickTextDialog()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v3

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v4, "QUIC"

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showAddtextDialog()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->setContactIntent(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v4, 0x1d

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {}, Lcom/android/mms/ui/SipHandler;->isSipVisible()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mForceShowSip:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    :cond_21
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showChooseContactDialog()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_1e
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    const/4 v10, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0c0222

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/ui/MmsRichContainer;->getTotalPageCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v5, Lcom/android/mms/ui/ComposeMenu$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/ui/ComposeMenu$3;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    if-eqz v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getDuration()I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v6

    :cond_22
    const/4 v3, 0x0

    div-int/lit16 v4, v6, 0x3e8

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    if-ge v6, v3, :cond_24

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v6

    :cond_23
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v46, v0

    new-instance v3, Lcom/android/mms/ui/MessagePickerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/ui/ComposeMenu;->mMaximumSlideElementDuration:I

    const/4 v9, -0x1

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    move-object/from16 v0, v46

    iput-object v3, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessagePickerDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$4;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v22

    const-string v3, "Mms/ComposerMenu"

    const-string v4, "NullPointerException !!!"

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/ComposeMenu;->mMaximumSlideElementDuration:I

    if-le v6, v3, :cond_23

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/mms/ui/ComposeMenu;->mMaximumSlideElementDuration:I

    goto :goto_7

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showLayoutSelectorDialog()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_20
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v3

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v4, "ASLI"

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v3

    add-int/lit8 v28, v3, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->addSlide(I)Z

    move-result v3

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/16 v7, 0x21

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v28

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    sget-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    :cond_27
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_28

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v30

    if-nez v30, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v32

    if-eqz v32, :cond_28

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setWorkingMessageUri(Landroid/net/Uri;)V

    :cond_28
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v3

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->refreshSignatureInEditor(Ljava/lang/String;Z)V

    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V
    :try_end_3
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v3, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v22

    const-string v3, "Mms/ComposerMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ExceedMessageSizeException "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ExceedMessageSizeException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v42

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->showErrorPopup(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->removeSlide(I)Z

    move-result v3

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MmsRichContainer;->removePage(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;[I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    const/16 v7, 0x23

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/MmsRichContainer;->update(Lcom/android/mms/data/WorkingMessage;I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    :cond_2a
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->multiCopytoSIM(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->multiCopytoSIM(I)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_24
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startMessageTransmitSettingsActivity(Z)V

    :goto_8
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startMessageReservedSettingActivity(Z)V

    goto :goto_8

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x5

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->enableMultiMode(IZ)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->setCombineAndForwardMode(Z)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showPriorityLevel()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_27
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMenu;->AddRecipent()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableContextServiceEnable()Z

    move-result v3

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v4, "RECI"

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Lcom/android/mms/util/UsageFrequencyAccumulator;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isWorthSaving()Z

    move-result v3

    if-nez v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c03e6

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v3

    if-eqz v3, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isValidRecipientEdier()Z

    move-result v3

    if-nez v3, :cond_2e

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->noRecipientsInEditor()Z

    move-result v3

    if-eqz v3, :cond_30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipientEditText()Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_2f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipientEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0188

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_9
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_30
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v3

    if-eqz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->saveDraftAndReset(Z)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isExitOnSent()Z

    move-result v3

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$5;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto :goto_9

    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showAttachListPanel()V

    goto :goto_9

    :cond_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    new-instance v4, Lcom/android/mms/ui/ComposeMenu$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/mms/ui/ComposeMenu$6;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto :goto_9

    :sswitch_29
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableComposeWhenLowMemory()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLowMemoryMode()Z

    move-result v3

    if-eqz v3, :cond_33

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c0484

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_a
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->composeNewMessage(Landroid/app/Activity;)V

    goto :goto_a

    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startSearchMenu(Landroid/app/Activity;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_2b
    new-instance v26, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/MessagingPreferenceActivity;

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/TranslateManager;->hasSamsungAccount()Z

    move-result v3

    if-nez v3, :cond_34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TranslateManager;->showSignInSamsungAccount(Landroid/content/Context;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getTranslateManager()Lcom/android/mms/ui/TranslateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/TranslateManager;->showTranslateDialog(Landroid/content/Context;)V

    goto :goto_b

    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showFontSizeSettingDialog()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->viewContactDetailORList()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_2f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v3

    if-eqz v3, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->showViewbyDialog()V

    :cond_35
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->hideSip()V

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMenu;->AddFreeMsgRecipent()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setReqestMessage(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setReqestChat(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->updateFreeMessageState()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v3

    if-eqz v3, :cond_36

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateFreeMessageUI()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_32
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setReqestMessage(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setReqestChat(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->updateFreeMessageState()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateFreeMessageUI()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->startFileHistoryActivity(Landroid/app/Activity;)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_39

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v20

    new-instance v14, Lcom/android/mms/data/ContactList;

    invoke-direct {v14}, Lcom/android/mms/data/ContactList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v35

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_37
    :goto_c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/data/Contact;

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->isNumberCanAddToPrioritySender(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Lcom/android/mms/prioritysender/PrioritySenderCache;->isPrioritySender(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_37

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_38
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v14}, Lcom/android/mms/ui/ComposeMessageFragment;->updatePrioritySender(ZLcom/android/mms/data/ContactList;)V

    :cond_39
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v20

    new-instance v38, Lcom/android/mms/data/ContactList;

    invoke-direct/range {v38 .. v38}, Lcom/android/mms/data/ContactList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v35

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_3a
    :goto_d
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Lcom/android/mms/prioritysender/PrioritySenderCache;->isPrioritySender(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v3, v4, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updatePrioritySender(ZLcom/android/mms/data/ContactList;)V

    :cond_3c
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v20

    new-instance v16, Lcom/android/mms/data/ContactList;

    invoke-direct/range {v16 .. v16}, Lcom/android/mms/data/ContactList;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_3d
    :goto_e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual/range {v16 .. v17}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showUpdateSpamNumberDialog(ZLcom/android/mms/data/ContactList;)V

    :cond_3f
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-lez v3, :cond_42

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v20

    new-instance v44, Lcom/android/mms/data/ContactList;

    invoke-direct/range {v44 .. v44}, Lcom/android/mms/data/ContactList;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_40
    :goto_f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/data/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    move-object/from16 v0, v44

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v3, v4, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->showUpdateSpamNumberDialog(ZLcom/android/mms/data/ContactList;)V

    :cond_42
    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_38
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ComposeMenu;->AddRcsRecipent()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->ChangeChatNameDialog(Z)V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/rcs/RcsChatManager;->setRequestMessage(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/rcs/RcsChatManager;->setRequestChat(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v7

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/rcs/RcsChatManager;->updateRcsState(ZZ)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v3

    if-eqz v3, :cond_43

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(Z)V

    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateRcsUI()V

    const/4 v3, 0x1

    goto/16 :goto_0

    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/rcs/RcsChatManager;->setRequestMessage(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/rcs/RcsChatManager;->setRequestChat(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v7

    invoke-virtual {v3, v4, v7}, Lcom/android/mms/rcs/RcsChatManager;->updateRcsState(ZZ)J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateRcsUI()V

    const/4 v3, 0x1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_3
        0x3ea -> :sswitch_f
        0x3eb -> :sswitch_11
        0x3ec -> :sswitch_a
        0x3ed -> :sswitch_d
        0x3ee -> :sswitch_13
        0x3ef -> :sswitch_12
        0x3f1 -> :sswitch_1a
        0x3f2 -> :sswitch_4
        0x3f3 -> :sswitch_15
        0x3f4 -> :sswitch_19
        0x3fb -> :sswitch_e
        0x402 -> :sswitch_18
        0x403 -> :sswitch_1c
        0x406 -> :sswitch_1d
        0x409 -> :sswitch_2
        0x40a -> :sswitch_2c
        0x410 -> :sswitch_1e
        0x41c -> :sswitch_1f
        0x41d -> :sswitch_20
        0x41e -> :sswitch_21
        0x427 -> :sswitch_6
        0x428 -> :sswitch_24
        0x42c -> :sswitch_5
        0x42d -> :sswitch_26
        0x42e -> :sswitch_1
        0x435 -> :sswitch_9
        0x436 -> :sswitch_f
        0x43a -> :sswitch_27
        0x43c -> :sswitch_29
        0x43d -> :sswitch_2a
        0x43e -> :sswitch_2b
        0x440 -> :sswitch_13
        0x442 -> :sswitch_10
        0x445 -> :sswitch_22
        0x448 -> :sswitch_25
        0x449 -> :sswitch_1b
        0x44b -> :sswitch_28
        0x451 -> :sswitch_2d
        0x453 -> :sswitch_7
        0x454 -> :sswitch_2e
        0x455 -> :sswitch_14
        0x456 -> :sswitch_8
        0x457 -> :sswitch_16
        0x458 -> :sswitch_17
        0x459 -> :sswitch_30
        0x45a -> :sswitch_39
        0x45b -> :sswitch_31
        0x45c -> :sswitch_32
        0x45d -> :sswitch_33
        0x45e -> :sswitch_b
        0x461 -> :sswitch_23
        0x462 -> :sswitch_2f
        0x463 -> :sswitch_34
        0x464 -> :sswitch_35
        0x465 -> :sswitch_36
        0x466 -> :sswitch_37
        0x467 -> :sswitch_3a
        0x468 -> :sswitch_3b
        0x46a -> :sswitch_c
        0x46b -> :sswitch_38
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareFreeMessageOptionsMenu(Landroid/view/Menu;)V
    .locals 14
    .param p1    # Landroid/view/Menu;

    const v9, 0x7f0c0005

    const/16 v13, 0x436

    const v12, 0x7f020008

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->isGroupChatMode()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v4, Lcom/android/mms/VoLTEStateTracker;

    invoke-direct {v4}, Lcom/android/mms/VoLTEStateTracker;-><init>()V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v8}, Lcom/android/mms/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v8, 0x440

    invoke-interface {p1, v10, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f020353

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->getEnableVideoCall(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v8

    if-nez v8, :cond_3

    const/16 v8, 0x3f3

    const v9, 0x7f0c023c

    invoke-interface {p1, v10, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f02010f

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v5

    :cond_4
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isUnknownAddressMessage()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v8, 0x7f0c007c

    invoke-interface {p1, v11, v13, v10, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v8, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_5
    const/16 v8, 0x440

    invoke-interface {p1, v10, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200ec

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    :cond_6
    const/16 v8, 0x440

    invoke-interface {p1, v10, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200ec

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v8, 0x3ee

    invoke-interface {p1, v10, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200ec

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_9
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v8

    if-eqz v8, :cond_d

    if-ne v5, v11, :cond_c

    const v8, 0x7f0c0095

    invoke-interface {p1, v11, v13, v10, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_2
    if-le v5, v11, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x3eb

    const v9, 0x7f0c0099

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200f9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    const/16 v8, 0x442

    const v9, 0x7f0c038a

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f020106

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_b
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v8, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_c
    const v8, 0x7f0c0096

    invoke-interface {p1, v11, v13, v10, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_d
    const v8, 0x7f0c007c

    invoke-interface {p1, v11, v13, v10, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    if-lez v8, :cond_f

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v8

    if-nez v8, :cond_f

    const/16 v8, 0x454

    const v9, 0x7f0c01be

    invoke-interface {p1, v10, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200d3

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_f
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isDisplayDeleteIcon()Z

    move-result v8

    if-eqz v8, :cond_10

    const v8, 0x7f0c007c

    invoke-interface {p1, v11, v13, v10, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_10
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->isGroupChatMode()Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v8

    if-eqz v8, :cond_13

    :cond_11
    const/16 v8, 0x45b

    const v9, 0x7f0c052f

    invoke-interface {p1, v10, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v9}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->isEnableChangeMode(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_13

    :cond_12
    const/16 v8, 0x45b

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_13
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->isFreeMessageServiceEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->isGroupChatMode()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->isClosedGroupChat()Z

    move-result v8

    if-nez v8, :cond_14

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v8

    if-nez v8, :cond_14

    const/16 v8, 0x459

    const v9, 0x7f0c0530

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_14
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    const-string v9, "com.android.contacts"

    invoke-static {v8, v9}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    sget-object v9, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v8

    if-nez v8, :cond_17

    :cond_15
    if-eqz v6, :cond_16

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    if-ne v8, v11, :cond_16

    invoke-virtual {v6, v10}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/Contact;

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v8

    if-eqz v8, :cond_16

    const/16 v8, 0x3f4

    const v9, 0x7f0c004a

    invoke-interface {p1, v10, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200ed

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_16
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMenu;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    :cond_17
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v8

    if-eqz v8, :cond_18

    const/16 v8, 0x3f1

    const v9, 0x7f0c0489

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200e9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_18
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->isGroupChatMode()Z

    move-result v8

    if-nez v8, :cond_19

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAddRecipients()Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v8

    if-nez v8, :cond_19

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v8

    if-nez v8, :cond_19

    const/16 v8, 0x43a

    const v9, 0x7f0c0354

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200e6

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_19
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v8

    if-nez v8, :cond_1a

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v8

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_1b

    :cond_1a
    const/16 v8, 0x402

    const v9, 0x7f0c00d5

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200f7

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1b
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v8

    if-eqz v8, :cond_1c

    const/16 v8, 0x428

    const v9, 0x7f0c02e5

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f02011a

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1c
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v8

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v8

    if-lez v8, :cond_1d

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v8

    if-nez v8, :cond_1d

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_1d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ne v8, v11, :cond_27

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v8

    if-eqz v8, :cond_1d

    const/16 v8, 0x3ea

    const v9, 0x7f0c0095

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1d
    :goto_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnablePrioritySender(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1e

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v8

    if-nez v8, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMenu;->buildAddAndRemoveToPrioritySenderMenuItem(Landroid/view/Menu;)V

    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v8

    if-nez v8, :cond_1f

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMenu;->buildAddAndRemoveToSpamNumberMenuItem(Landroid/view/Menu;)V

    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v8

    if-eqz v8, :cond_20

    const/16 v8, 0x40a

    const v9, 0x7f0c0180

    invoke-interface {p1, v10, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f020312

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-object v8, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    if-nez v8, :cond_20

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "caller"

    const-string v9, "msg"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v8, 0x40a

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_20
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v8

    if-nez v8, :cond_21

    const/16 v8, 0x3ec

    const v9, 0x7f0c0025

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200cc

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_21
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v8

    if-eqz v8, :cond_22

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v8

    if-nez v8, :cond_22

    const/16 v8, 0x451

    const v9, 0x7f0c03d0

    invoke-interface {p1, v10, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_22
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->isFreeMessageServiceEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_23

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v8

    if-nez v8, :cond_23

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->isGroupChatMode()Z

    move-result v8

    if-eqz v8, :cond_23

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->isClosedGroupChat()Z

    move-result v8

    if-nez v8, :cond_23

    const/16 v8, 0x45e

    const v9, 0x7f0c0531

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_23
    const/4 v2, 0x1

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v8

    if-eqz v8, :cond_24

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->isFreeMessageServiceEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_24

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isRcsServiceEnabled()Z

    move-result v8

    if-nez v8, :cond_24

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v8

    if-eqz v8, :cond_25

    :cond_24
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getImType()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_25

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getImType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_26

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->size()I

    move-result v8

    if-nez v8, :cond_26

    :cond_25
    const/4 v2, 0x0

    :cond_26
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v8, p1, v2}, Lcom/android/mms/util/UIUtils;->setDefaultChatMenu(Landroid/content/Context;Landroid/view/Menu;Z)V

    goto/16 :goto_0

    :cond_27
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v8, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v8}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v8

    if-eqz v8, :cond_28

    const/16 v8, 0x3ea

    const v9, 0x7f0c0096

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_28
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v8

    if-eqz v8, :cond_29

    const/16 v8, 0x3eb

    const v9, 0x7f0c0099

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f0200f9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_29
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1d

    const/16 v8, 0x442

    const v9, 0x7f0c038a

    invoke-interface {p1, v11, v8, v10, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    const v9, 0x7f020106

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 29
    .param p1    # Landroid/view/Menu;

    const-string v21, "Mms/ComposerMenu"

    const-string v22, "onPrepareOptionsMenu()"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ConversationComposer;->getConversationListFragment()Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/mms/ui/ConversationListFragment;->isMultiSelectMode()Z

    move-result v21

    if-eqz v21, :cond_1

    const-string v21, "Mms/ComposerMenu"

    const-string v22, "onPrepareOptionsMenu() Already delete or move mode"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-nez v21, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x0

    const/16 v22, 0x455

    const/16 v23, 0x0

    const v24, 0x7f0c02fe

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0202dc

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v21

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v22

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v15

    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v21

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v21

    if-nez v21, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTECallIcon()Z

    move-result v21

    if-eqz v21, :cond_6

    new-instance v13, Lcom/android/mms/VoLTEStateTracker;

    invoke-direct {v13}, Lcom/android/mms/VoLTEStateTracker;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/android/mms/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v21, 0x0

    const/16 v22, 0x440

    const/16 v23, 0x0

    const v24, 0x7f0c0005

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0b0011

    invoke-static/range {v22 .. v22}, Lcom/android/mms/CustomR;->getResourceId(I)I

    move-result v22

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v21

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v22

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v21

    if-nez v21, :cond_0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v14

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isUnknownAddressMessage()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    const/16 v21, 0x1

    const/16 v22, 0x436

    const/16 v23, 0x0

    const v24, 0x7f0c007c

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020008

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v21

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v22

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_5
    const/16 v21, 0x0

    const/16 v22, 0x440

    const/16 v23, 0x0

    const v24, 0x7f0c0005

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200ec

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v21

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v22

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    :cond_6
    const/16 v21, 0x0

    const/16 v22, 0x440

    const/16 v23, 0x0

    const v24, 0x7f0c0005

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200ec

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v21

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v22

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v21, 0x0

    const/16 v22, 0x3ee

    const/16 v23, 0x0

    const v24, 0x7f0c0005

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200ec

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAddSendOptionInComposer()Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isPreparedForSendingMenu()Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v21

    if-nez v21, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v21

    if-nez v21, :cond_a

    :cond_9
    const/16 v21, 0x1

    const/16 v22, 0x3ed

    const/16 v23, 0x0

    const v24, 0x7f0c0029

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020109

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v21

    if-nez v21, :cond_b

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v21

    if-nez v21, :cond_b

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v21

    if-eqz v21, :cond_11

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v21

    if-eqz v21, :cond_f

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_e

    const/16 v21, 0x1

    const/16 v22, 0x436

    const/16 v23, 0x0

    const v24, 0x7f0c0095

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020008

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_2
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v14, v0, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v21

    if-eqz v21, :cond_c

    const/16 v21, 0x1

    const/16 v22, 0x3eb

    const/16 v23, 0x0

    const v24, 0x7f0c0099

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200f9

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_d

    const/16 v21, 0x1

    const/16 v22, 0x442

    const/16 v23, 0x0

    const v24, 0x7f0c038a

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020106

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_e
    const/16 v21, 0x1

    const/16 v22, 0x436

    const/16 v23, 0x0

    const v24, 0x7f0c0096

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020008

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_f
    const/16 v21, 0x1

    const/16 v22, 0x436

    const/16 v23, 0x0

    const v24, 0x7f0c007c

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020008

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v21

    const/16 v22, 0x2

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_2

    :cond_10
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_d

    const/16 v21, 0x1

    const/16 v22, 0x442

    const/16 v23, 0x0

    const v24, 0x7f0c038b

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020106

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    :cond_11
    if-eqz v15, :cond_12

    invoke-virtual {v15}, Lcom/android/mms/data/ContactList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v21

    if-nez v21, :cond_12

    const/16 v21, 0x0

    const/16 v22, 0x454

    const/16 v23, 0x0

    const v24, 0x7f0c01be

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200d3

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v21

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v22

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-nez v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v21

    if-nez v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isDisplayDeleteIcon()Z

    move-result v21

    if-eqz v21, :cond_13

    const/16 v21, 0x1

    const/16 v22, 0x436

    const/16 v23, 0x0

    const v24, 0x7f0c007c

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020008

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v21

    const/16 v22, 0x2

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_13
    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v21

    if-nez v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v21

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-nez v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/mms/MmsConfig;->getEnableVideoCall(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    const/16 v22, 0x3f3

    const/16 v23, 0x0

    const v24, 0x7f0c023c

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f02010f

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v21

    const-string v22, "LGU+"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isLGUUsim()Z

    move-result v21

    if-eqz v21, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v21

    if-nez v21, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->isUltraPowerSavingMode()Z

    move-result v21

    if-nez v21, :cond_15

    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v21

    if-nez v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v21

    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-nez v21, :cond_15

    const/16 v21, 0x0

    const/16 v22, 0x457

    const/16 v23, 0x0

    const v24, 0x7f0c0006

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200ec

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v21

    const-string v22, "SKT"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/TelephonyUtils;->isSKTSIM(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_16

    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v21

    if-nez v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v21

    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-nez v21, :cond_16

    const/16 v21, 0x0

    const/16 v22, 0x458

    const/16 v23, 0x0

    const v24, 0x7f0c04c4

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200ec

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_16
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v21

    const-string v22, "KT"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKTSIM()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-static {v15}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v21

    if-nez v21, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v21

    if-eqz v21, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-nez v21, :cond_17

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnableKTShowMe()Z

    move-result v21

    if-nez v21, :cond_46

    const/16 v21, 0x0

    const/16 v22, 0x458

    const/16 v23, 0x0

    const v24, 0x7f0c04c5

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200ec

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_17
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/MmsConfig;->isFreeMessageServiceEnabled(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v21

    if-eqz v21, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isWorthSaving()Z

    move-result v21

    if-eqz v21, :cond_47

    const/4 v9, 0x1

    :goto_5
    if-nez v9, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getRecipientCapsStateForFreeMesage()Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->isGroupChatMode()Z

    move-result v21

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-eqz v21, :cond_1a

    :cond_18
    const/16 v21, 0x0

    const/16 v22, 0x45c

    const/16 v23, 0x0

    const v24, 0x7f0c052e

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v21

    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->isEnableChangeMode(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1a

    :cond_19
    const/16 v21, 0x45c

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    const-string v22, "com.android.contacts"

    invoke-static/range {v21 .. v22}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static/range {v21 .. v22}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_1d

    :cond_1b
    if-eqz v15, :cond_1c

    invoke-virtual {v15}, Lcom/android/mms/data/ContactList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v21

    if-eqz v21, :cond_1c

    const/16 v21, 0x0

    const/16 v22, 0x3f4

    const/16 v23, 0x0

    const v24, 0x7f0c004a

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200ed

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMenu;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    :cond_1d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTextTempateButton()Z

    move-result v21

    if-nez v21, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v21

    if-eqz v21, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v21

    if-eqz v21, :cond_1e

    const/16 v21, 0x1

    const/16 v22, 0x3f1

    const/16 v23, 0x0

    const v24, 0x7f0c0489

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200e9

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAddText()Z

    move-result v21

    if-eqz v21, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v21

    if-eqz v21, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v21

    if-eqz v21, :cond_1f

    const/16 v21, 0x1

    const/16 v22, 0x449

    const/16 v23, 0x0

    const v24, 0x7f0c011d

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200e9

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAddRecipients()Z

    move-result v21

    if-eqz v21, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v21

    if-nez v21, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_20

    const/16 v21, 0x1

    const/16 v22, 0x43a

    const/16 v23, 0x0

    const v24, 0x7f0c0354

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200e6

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_20
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v21

    if-eqz v21, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v21

    if-eqz v21, :cond_48

    const-wide/16 v11, 0x0

    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v21

    if-nez v21, :cond_24

    const-wide/16 v21, 0x0

    cmp-long v21, v11, v21

    if-nez v21, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getRcsChatManager()Lcom/android/mms/rcs/RcsChatManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/rcs/RcsChatManager;->isRequestMessage()Z

    move-result v21

    if-eqz v21, :cond_24

    :cond_21
    invoke-static {v11, v12}, Lcom/android/mms/rcs/RcsChatManager;->isGroupChatMode(J)Z

    move-result v21

    if-eqz v21, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-eqz v21, :cond_24

    :cond_22
    const/16 v21, 0x0

    const/16 v22, 0x468

    const/16 v23, 0x0

    const v24, 0x7f0c052e

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v21

    if-eqz v21, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->isEnableChangeMode(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_24

    :cond_23
    const/16 v21, 0x468

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v21

    if-eqz v21, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v21

    if-nez v21, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v21

    if-eqz v21, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->isFocused()Z

    move-result v21

    if-eqz v21, :cond_26

    :cond_25
    const/16 v21, 0x1

    const/16 v22, 0x402

    const/16 v23, 0x0

    const v24, 0x7f0c00d5

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200f7

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_26
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableViewBySimSlot()Z

    move-result v21

    if-eqz v21, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_29

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v21

    if-nez v21, :cond_27

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v21

    if-eqz v21, :cond_29

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_29

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-nez v21, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v21

    if-gtz v21, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsViewByMode:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v21

    if-nez v21, :cond_29

    :cond_28
    const/16 v21, 0x0

    const/16 v22, 0x462

    const/16 v23, 0x0

    const v24, 0x7f0c0486

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v21

    if-eqz v21, :cond_2c

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v21

    if-eqz v21, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v21

    if-nez v21, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v21

    if-nez v21, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v21

    if-eqz v21, :cond_2c

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-eqz v21, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-eqz v21, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v21

    if-eqz v21, :cond_2c

    :cond_2b
    const/16 v21, 0x0

    const/16 v22, 0x409

    const/16 v23, 0x0

    const v24, 0x7f0c0045

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200fc

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v21

    if-eqz v21, :cond_2d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSubject()Z

    move-result v21

    if-eqz v21, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v21

    if-nez v21, :cond_49

    const/16 v21, 0x1

    const/16 v22, 0x3e8

    const/16 v23, 0x0

    const v24, 0x7f0c0024

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200e8

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2d
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v21

    if-eqz v21, :cond_30

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v21

    if-eqz v21, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v21

    if-eqz v21, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v21

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2f

    :cond_2e
    const/16 v21, 0x1

    const/16 v22, 0x41d

    const/16 v23, 0x0

    const v24, 0x7f0c0020

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200e7

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v21

    if-eqz v21, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v21

    if-eqz v21, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v18

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_30

    const/16 v21, 0x1

    const/16 v22, 0x41e

    const/16 v23, 0x0

    const v24, 0x7f0c001f

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020101

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_30
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v21

    if-eqz v21, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v21

    if-nez v21, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v21

    if-nez v21, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_31

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v21

    if-eqz v21, :cond_4a

    const/16 v21, 0x1

    const/16 v22, 0x428

    const/16 v23, 0x0

    const v24, 0x7f0c03f5

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020107

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_31
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v21

    if-eqz v21, :cond_34

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v21

    if-eqz v21, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v21

    if-eqz v21, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v21

    if-eqz v21, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v21

    if-lez v21, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v21

    if-eqz v21, :cond_34

    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v21

    if-eqz v21, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->getDuration()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    :cond_32
    :goto_9
    const/16 v21, 0x0

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v17

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_33

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v17

    :cond_33
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    const v22, 0x7f0c0046

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "%d"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    :goto_a
    const/16 v21, 0x1

    const/16 v22, 0x410

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200f2

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v21

    if-eqz v21, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v21

    if-eqz v21, :cond_35

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v21

    if-eqz v21, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v21

    if-eqz v21, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v21

    if-lez v21, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v21

    if-eqz v21, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4c

    const v16, 0x7f0c0047

    :goto_b
    const/16 v21, 0x1

    const/16 v22, 0x41c

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v16

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200fa

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_35
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmEnableAddContactIn1stDepthComposerOption()Z

    move-result v21

    if-eqz v21, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v21

    if-eqz v21, :cond_36

    const/16 v21, 0x1

    const/16 v22, 0x42c

    const/16 v23, 0x0

    const v24, 0x7f0c033e

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020351

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v21

    if-eqz v21, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v21

    if-lez v21, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-nez v21, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_38

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v21

    if-lez v21, :cond_38

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v21

    if-eqz v21, :cond_37

    const/16 v21, 0x1

    const/16 v22, 0x3ea

    const/16 v23, 0x0

    const v24, 0x7f0c0095

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020008

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_37
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v21

    if-eqz v21, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_38

    const/16 v21, 0x1

    const/16 v22, 0x442

    const/16 v23, 0x0

    const v24, 0x7f0c038b

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020106

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_38
    :goto_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiCopyToSIM()Z

    move-result v21

    if-eqz v21, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-nez v21, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v21

    if-lez v21, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_3b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDuosCdmaGsm()Z

    move-result v21

    if-nez v21, :cond_39

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiSim()Z

    move-result v21

    if-eqz v21, :cond_50

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_50

    :cond_39
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/TelephonyUtils;->isSimReady(I)Z

    move-result v21

    if-eqz v21, :cond_3a

    const/16 v21, 0x1

    const/16 v22, 0x445

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/mms/ui/MessageUtils;->getCopyToSimMenuName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200f0

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3a
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/TelephonyUtils;->isSimReady(I)Z

    move-result v21

    if-eqz v21, :cond_3b

    const/16 v21, 0x1

    const/16 v22, 0x461

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/android/mms/ui/MessageUtils;->getCopyToSimMenuName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200f0

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3b
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnablePrioritySender(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_3c

    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMenu;->buildAddAndRemoveToPrioritySenderMenuItem(Landroid/view/Menu;)V

    :cond_3c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v21

    if-eqz v21, :cond_3d

    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ComposeMenu;->buildAddAndRemoveToSpamNumberMenuItem(Landroid/view/Menu;)V

    :cond_3d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v21

    if-eqz v21, :cond_3e

    const/16 v21, 0x1

    const/16 v22, 0x42d

    const/16 v23, 0x0

    const v24, 0x7f0c042e

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200fe

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiDraftMsgBox()Z

    move-result v21

    if-eqz v21, :cond_3f

    const/16 v21, 0x1

    const/16 v22, 0x44b

    const/16 v23, 0x0

    const v24, 0x7f0c00ec

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020352

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v21

    if-eqz v21, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v21

    if-eqz v21, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v21

    if-eqz v21, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v21

    if-eqz v21, :cond_41

    :cond_40
    const/16 v21, 0x0

    const/16 v22, 0x40a

    const/16 v23, 0x0

    const v24, 0x7f0c0180

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020312

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-object v21, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    if-nez v21, :cond_41

    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    const-string v21, "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v21, "caller"

    const-string v22, "msg"

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v21, 0x40a

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_42

    const/16 v21, 0x1

    const/16 v22, 0x3ec

    const/16 v23, 0x0

    const v24, 0x7f0c0025

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200cc

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_42
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v21

    if-eqz v21, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v21

    if-nez v21, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v21

    if-nez v21, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->msgItemMmsOnly()Z

    move-result v21

    if-nez v21, :cond_43

    const/16 v21, 0x1

    const/16 v22, 0x448

    const/16 v23, 0x0

    const v24, 0x7f0c0402

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200f4

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_43
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v21

    if-eqz v21, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v21

    if-nez v21, :cond_44

    const/16 v21, 0x0

    const/16 v22, 0x451

    const/16 v23, 0x0

    const v24, 0x7f0c03d0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_44
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v21

    if-eqz v21, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/Conversation;->getSessionId()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v21

    if-nez v21, :cond_45

    const/16 v21, 0x0

    const/16 v22, 0x45d

    const/16 v23, 0x0

    const v24, 0x7f0c04d7

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020118

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_46
    const/16 v21, 0x0

    const/16 v22, 0x458

    const/16 v23, 0x0

    const v24, 0x7f0c04c6

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200ec

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_47
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/data/WorkingMessage;->getRcsState()J

    move-result-wide v11

    goto/16 :goto_6

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageFragment;->isSubjectEditorVisible()Z

    move-result v21

    if-eqz v21, :cond_2d

    const/16 v21, 0x1

    const/16 v22, 0x3f2

    const/16 v23, 0x0

    const v24, 0x7f0c011e

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020102

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_7

    :cond_4a
    const/16 v21, 0x1

    const/16 v22, 0x428

    const/16 v23, 0x0

    const v24, 0x7f0c02e5

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020107

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_8

    :catch_0
    move-exception v8

    const-string v21, "Mms/ComposerMenu"

    const-string v22, "NullPointerException !!!"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    const v22, 0x7f0c0135

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "%d"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_a

    :cond_4c
    const v16, 0x7f0c0048

    goto/16 :goto_b

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v21

    if-eqz v21, :cond_4e

    const/16 v21, 0x1

    const/16 v22, 0x3ea

    const/16 v23, 0x0

    const v24, 0x7f0c0096

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020008

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v21

    if-eqz v21, :cond_4f

    const/16 v21, 0x1

    const/16 v22, 0x3eb

    const/16 v23, 0x0

    const v24, 0x7f0c0099

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200f9

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4f
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v21

    if-eqz v21, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/mms/MmsConfig;->getEnableEasyMode(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_38

    const/16 v21, 0x1

    const/16 v22, 0x442

    const/16 v23, 0x0

    const v24, 0x7f0c038a

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f020106

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_c

    :cond_50
    const/16 v21, 0x1

    const/16 v22, 0x445

    const/16 v23, 0x0

    const v24, 0x7f0c0019

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v21

    const v22, 0x7f0200f0

    invoke-interface/range {v21 .. v22}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_d
.end method

.method public onPrepareRcsOptionsMenu(Landroid/view/Menu;)V
    .locals 11
    .param p1    # Landroid/view/Menu;

    const v6, 0x7f0c0005

    const v10, 0x7f020008

    const/16 v9, 0x436

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isAliasAddress(Lcom/android/mms/data/ContactList;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientCallable()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v2, Lcom/android/mms/VoLTEStateTracker;

    invoke-direct {v2}, Lcom/android/mms/VoLTEStateTracker;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Lcom/android/mms/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v5, 0x440

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020353

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/MmsConfig;->getEnableVideoCall(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x3f3

    const v6, 0x7f0c023c

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f02010f

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEmergencyMode()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListAdapter()Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v3

    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isUnknownAddressMessage()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v5, 0x7f0c007c

    invoke-interface {p1, v8, v9, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v5, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_5
    const/16 v5, 0x440

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200ec

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    :cond_6
    const/16 v5, 0x440

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200ec

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v5, 0x3ee

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200ec

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_9
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v5

    if-eqz v5, :cond_d

    if-ne v3, v8, :cond_c

    const v5, 0x7f0c0095

    invoke-interface {p1, v8, v9, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_2
    if-le v3, v8, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v5, 0x3eb

    const v6, 0x7f0c0099

    invoke-interface {p1, v8, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200f9

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x442

    const v6, 0x7f0c038a

    invoke-interface {p1, v8, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020106

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_b
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v5, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_c
    const v5, 0x7f0c0096

    invoke-interface {p1, v8, v9, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_d
    const v5, 0x7f0c007c

    invoke-interface {p1, v8, v9, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/ContactList;->size()I

    move-result v5

    if-lez v5, :cond_f

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isNewCompose()Z

    move-result v5

    if-nez v5, :cond_f

    const/16 v5, 0x454

    const v6, 0x7f0c01be

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200d3

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_f
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationComposer;->getIsSplitViewMode()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getIsMultiMode()Z

    move-result v5

    if-nez v5, :cond_10

    const v5, 0x7f0c007c

    invoke-interface {p1, v8, v9, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/data/WorkingMessage;->isRcsGroupChatMode(Z)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_11
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_12
    const/16 v5, 0x467

    const v6, 0x7f0c052f

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getTextOnRichContainer()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessageFragment;->isEnableChangeMode(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    :cond_13
    const/16 v5, 0x467

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_14
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/rcs/RcsChatManager;->isClosedGroupChat(Lcom/android/mms/data/Conversation;)Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v5

    if-nez v5, :cond_15

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v5

    if-nez v5, :cond_21

    const/16 v5, 0x459

    const v6, 0x7f0c0530

    invoke-interface {p1, v8, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_15
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/rcs/RcsChatManager;->isClosedGroupChat(Lcom/android/mms/data/Conversation;)Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isGroupMessage()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/data/WorkingMessage;->isRcsGroupChatMode(Z)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v5, 0x45a

    const v6, 0x7f0c0536

    invoke-interface {p1, v8, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_16
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v5

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getSubjectEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_17
    const/16 v5, 0x402

    const v6, 0x7f0c00d5

    invoke-interface {p1, v8, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200f7

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_18
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v5

    if-eqz v5, :cond_19

    const/16 v5, 0x3f1

    const v6, 0x7f0c0489

    invoke-interface {p1, v8, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200e9

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_19
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRcsScheduledMessage()Z

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v5, 0x428

    const v6, 0x7f0c02e5

    invoke-interface {p1, v8, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f02011a

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1a
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v5

    if-nez v5, :cond_1b

    const v5, 0x7f0c0095

    invoke-interface {p1, v8, v9, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiLockMenu()Z

    move-result v5

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v5

    if-nez v5, :cond_1c

    const/16 v5, 0x3eb

    const v6, 0x7f0c0099

    invoke-interface {p1, v8, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200f9

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v5

    if-nez v5, :cond_1d

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/data/WorkingMessage;->isRcsGroupChatMode(Z)Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/rcs/RcsChatManager;->isClosedGroupChat(Lcom/android/mms/data/Conversation;)Z

    move-result v5

    if-nez v5, :cond_1d

    const/16 v5, 0x46a

    const v6, 0x7f0c0531

    invoke-interface {p1, v8, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1d
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z

    move-result v5

    if-nez v5, :cond_1e

    const/16 v5, 0x3ec

    const v6, 0x7f0c0025

    invoke-interface {p1, v8, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200cc

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTranslatorMenu()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isBottomPanelVisible()Z

    move-result v5

    if-eqz v5, :cond_1f

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->hasFocusOnRichContainer()Z

    move-result v5

    if-eqz v5, :cond_1f

    const/16 v5, 0x40a

    const v6, 0x7f0c0180

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020312

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-object v5, Lcom/android/mms/ui/TranslateManager;->mSupportedLanguages:Ljava/util/ArrayList;

    if-nez v5, :cond_1f

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.sec.android.app.translator.GET_SUPPORTED_LANGUAGES"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "caller"

    const-string v6, "msg"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v5, 0x40a

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1f
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v5

    if-nez v5, :cond_20

    const/16 v5, 0x45d

    const v6, 0x7f0c04d7

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020118

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_20
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v5, p1}, Lcom/android/mms/util/UIUtils;->setDefaultSmsMenu(Landroid/content/Context;Landroid/view/Menu;)V

    goto/16 :goto_0

    :cond_21
    const/16 v5, 0x43a

    const v6, 0x7f0c0354

    invoke-interface {p1, v8, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_3
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public startSearchMenu()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/mms/ui/ComposeMenu;->mIsSearchMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMenu;->mIsDelayForSearch:Z

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMenu$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMenu$7;-><init>(Lcom/android/mms/ui/ComposeMenu;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
