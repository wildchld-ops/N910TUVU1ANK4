.class public Lcom/android/mms/ui/RecipientListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RecipientListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/RecipientListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private layout:I

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mChatId:Ljava/lang/String;

.field private mContact:Lcom/android/mms/data/Contact;

.field private mContext:Landroid/content/Context;

.field private mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

.field private mRecipientListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/RecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientListItem;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/ui/RecipientListAdapter;->mThreadId:J

    iput p2, p0, Lcom/android/mms/ui/RecipientListAdapter;->layout:I

    iput-object p3, p0, Lcom/android/mms/ui/RecipientListAdapter;->mRecipientListItems:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/ui/RecipientListAdapter;->mChatId:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/mms/ui/RecipientListAdapter;->mThreadId:J

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/mms/ui/RecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/RecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    new-instance v0, Lcom/android/mms/rcs/RcsChatManager;

    invoke-direct {v0, p1}, Lcom/android/mms/rcs/RcsChatManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListAdapter;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17

    move-object/from16 v16, p2

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/RecipientListAdapter;->layout:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mRecipientListItems:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/RecipientListItem;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientListItem;->getContact()Lcom/android/mms/data/Contact;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientListAdapter;->setContactInfo(Lcom/android/mms/data/Contact;)V

    const v1, 0x7f0b004a

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v1, 0x7f0b006e

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v1, 0x7f0b0314

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v1, 0x7f0b0049

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/RecipientListAdapter;->mChatId:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/mms/rcs/RcsChatManager;->updateParticipantsStatus(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mChatId:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v12, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-static {v1, v5}, Lcom/android/mms/rcs/RcsChatManager;->getRcsParticipantUrl(Landroid/content/Context;Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mRcsChatManager:Lcom/android/mms/rcs/RcsChatManager;

    invoke-virtual {v1, v7}, Lcom/android/mms/rcs/RcsChatManager;->isOffline(Ljava/lang/String;)Z

    move-result v10

    invoke-static {}, Lcom/android/mms/rcs/RcsOwnCapsManager;->getInstance()Lcom/android/mms/rcs/RcsOwnCapsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/rcs/RcsOwnCapsManager;->isLocalOffline()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v10, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0c050f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/mms/ui/RecipientListAdapter;->updateAvatarView(Landroid/widget/QuickContactBadge;)V

    return-object v16

    :cond_4
    const/16 v1, 0x8

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mChatId:Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "user_alias"

    aput-object v5, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "address=\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_INTEGRATED_CONVERSATIONS_IM_N_FT_ONLY:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/RecipientListAdapter;->mThreadId:J

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const-string v6, "normalized_date ASC LIMIT 1"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_5
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    :cond_a
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_8
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v14, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method

.method public setContactInfo(Lcom/android/mms/data/Contact;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    return-void
.end method

.method public setContactInfo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    return-void
.end method

.method public updateAvatarView(Landroid/widget/QuickContactBadge;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/mms/ui/RecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/mms/ui/RecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
