.class public Lcom/android/mms/ui/RecipientListActivity;
.super Landroid/app/Activity;
.source "RecipientListActivity.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;


# static fields
.field private static final MENU_CANCEL:I = 0x0

.field private static final MENU_DONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/RecipientListActivity"


# instance fields
.field private isGroupInforEditClicked:Z

.field public mActionbarNormalListLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListSeparator:Landroid/widget/ImageView;

.field private mActionbarNormalListTemplateButton:Landroid/widget/TextView;

.field public mActionbarNormalListTitle:Landroid/widget/TextView;

.field private mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

.field private mActionbarNormalListTitleNumber:Landroid/widget/TextView;

.field private mAlertLayout:Landroid/widget/LinearLayout;

.field private mAlertSettingText:Landroid/widget/TextView;

.field private mAlertText:Landroid/widget/TextView;

.field private mAlertcheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mChatId:Ljava/lang/String;

.field mContactList:Lcom/android/mms/data/ContactList;

.field private mFreeMessageState:Z

.field private mGroupInforEdit:Landroid/widget/EditText;

.field private mGroupInforLayout:Landroid/widget/LinearLayout;

.field private mGroupInforText:Landroid/widget/TextView;

.field private mGroupMemberText:Landroid/widget/TextView;

.field private mIntent:Landroid/content/Intent;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMute_Notification:I

.field private mRcsState:Z

.field private mSubject:Ljava/lang/String;

.field private mTestRecipients:[Ljava/lang/String;

.field private mThreadid:J

.field private maxLength:I

.field recipientListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RecipientListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleLayout:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitleNumber:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTemplateButton:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListSeparator:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/mms/ui/RecipientListActivity;->maxLength:I

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mSubject:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mChatId:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mFreeMessageState:Z

    iput-boolean v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mRcsState:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadid:J

    iput-boolean v2, p0, Lcom/android/mms/ui/RecipientListActivity;->isGroupInforEditClicked:Z

    iput v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mMute_Notification:I

    new-instance v0, Lcom/android/mms/ui/RecipientListActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientListActivity$9;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RecipientListActivity;)Lcom/android/mms/ui/RecipientListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/RecipientListActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/RecipientListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/RecipientListActivity;->isGroupInforEditClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/RecipientListActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getRCSInfor(J)V
    .locals 17

    const/4 v15, 0x0

    sget-object v5, Lcom/android/mms/rcs/transaction/RcsTransaction$RcsThreads;->URI_RCS_THREAD_INFO_BY_THREAD_ID:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    const-string v3, "normal_thread_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RecipientListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "session_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/RecipientListActivity;->mChatId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/RecipientListActivity;->mChatId:Ljava/lang/String;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/mms/ui/RecipientListActivity;->mRcsState:Z

    const-string v3, "alias"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/ui/RecipientListActivity;->mSubject:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.samsung.rcs.im/chat/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/RecipientListActivity;->mChatId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v3, "Mms/RecipientListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRcsInfor rcsChatUri= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RecipientListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_2

    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "is_muted"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/mms/ui/RecipientListActivity;->mMute_Notification:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/ui/RecipientListActivity;->mMute_Notification:I

    if-nez v3, :cond_6

    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lcom/android/mms/data/Conversation;->setGroupChatNotiEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v3, "Mms/RecipientListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRcsInfor mMute_Notification= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/mms/ui/RecipientListActivity;->mMute_Notification:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v16

    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    const/4 v15, 0x0

    :cond_5
    throw v3

    :cond_6
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v13, v3}, Lcom/android/mms/data/Conversation;->setGroupChatNotiEnabled(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 4

    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private hideSoftKeyboard()V
    .locals 4

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private setupActionBar()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040001

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0035

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mFreeMessageState:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mRcsState:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const v2, 0x7f0c04fe

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/ui/RecipientListActivity$8;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/RecipientListActivity$8;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    const v2, 0x7f0c01be

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RecipientListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04008a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "recipients"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/rcs/Configuration$Im;->isRcsServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "threadid"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadid:J

    iget-wide v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadid:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/RecipientListActivity;->getRCSInfor(J)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/RecipientListActivity;->setupActionBar()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListLayout:Landroid/widget/LinearLayout;

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mActionbarNormalListTitle:Landroid/widget/TextView;

    :cond_2
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iput-boolean v3, p0, Lcom/android/mms/ui/RecipientListActivity;->isGroupInforEditClicked:Z

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupMemberText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/RecipientListActivity;->hideSoftKeyboard()V

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->invalidateOptionsMenu()V

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p0, Lcom/android/mms/ui/RecipientListActivity;->isGroupInforEditClicked:Z

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mSubject:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RecipientListActivity;->updateThreadAlias(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupMemberText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/mms/ui/RecipientListActivity;->hideSoftKeyboard()V

    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->invalidateOptionsMenu()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v0, p0, Lcom/android/mms/ui/RecipientListActivity;->isGroupInforEditClicked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cancel"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const-string v0, "Done"

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "Done"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupMemberText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return v4
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onStart()V
    .locals 13

    const v12, 0x7f0b0308

    const/16 v8, 0x32

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/16 v9, 0x8

    invoke-direct {p0}, Lcom/android/mms/ui/RecipientListActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mContactList:Lcom/android/mms/data/ContactList;

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->reloadContactList()V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/ui/RecipientListItem;

    iget-object v2, p0, Lcom/android/mms/ui/RecipientListActivity;->mTestRecipients:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/RecipientListItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/mms/ui/RecipientListAdapter;

    const v2, 0x7f04008b

    iget-object v3, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/mms/ui/RecipientListActivity;->mChatId:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadid:J

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/RecipientListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    const v0, 0x7f0b0311

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mListAdapter:Lcom/android/mms/ui/RecipientListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget v0, p0, Lcom/android/mms/ui/RecipientListActivity;->maxLength:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/mms/ui/RecipientListActivity;->maxLength:I

    :goto_1
    iput v0, p0, Lcom/android/mms/ui/RecipientListActivity;->maxLength:I

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b030b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0309

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforText:Landroid/widget/TextView;

    const v0, 0x7f0b030a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    new-array v1, v10, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/android/mms/ui/RecipientListActivity;->maxLength:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v0, 0x7f0b0310

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupMemberText:Landroid/widget/TextView;

    const v0, 0x7f0b030c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertSettingText:Landroid/widget/TextView;

    const v0, 0x7f0b030e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isFreeMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mFreeMessageState:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupMemberText:Landroid/widget/TextView;

    const v1, 0x7f0c0540

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/RecipientListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforText:Landroid/widget/TextView;

    const v1, 0x7f0c053f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RecipientListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/RecipientListActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/RecipientListActivity$2;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/RecipientListActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/RecipientListActivity$3;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/ui/RecipientListActivity$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/RecipientListActivity$7;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void

    :cond_2
    move v0, v8

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupMemberText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/mms/ui/RecipientListActivity;->maxLength:I

    if-lez v0, :cond_5

    iget v8, p0, Lcom/android/mms/ui/RecipientListActivity;->maxLength:I

    :cond_5
    iput v8, p0, Lcom/android/mms/ui/RecipientListActivity;->maxLength:I

    invoke-virtual {p0, v12}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b030b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0309

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforText:Landroid/widget/TextView;

    const v0, 0x7f0b030a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    new-array v1, v10, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Lcom/android/mms/ui/RecipientListActivity;->maxLength:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v0, 0x7f0b0310

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupMemberText:Landroid/widget/TextView;

    const v0, 0x7f0b030c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertSettingText:Landroid/widget/TextView;

    const v0, 0x7f0b030e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertText:Landroid/widget/TextView;

    const v0, 0x7f0b030f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertcheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mMute_Notification:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertcheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_3
    iget-boolean v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mRcsState:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mSubject:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupMemberText:Landroid/widget/TextView;

    const v1, 0x7f0c0540

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mms/ui/RecipientListActivity;->recipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/RecipientListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforText:Landroid/widget/TextView;

    const v1, 0x7f0c053f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RecipientListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/RecipientListActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/RecipientListActivity$4;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/RecipientListActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/RecipientListActivity$5;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertcheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v1, Lcom/android/mms/ui/RecipientListActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/RecipientListActivity$6;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertcheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v11}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupMemberText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupInforLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mAlertLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/ui/RecipientListActivity;->mGroupMemberText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2

    const-string v0, "ContactResult"

    const-string v1, "Contact onUpdate Called"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/mms/ui/RecipientListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientListActivity$1;-><init>(Lcom/android/mms/ui/RecipientListActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/RecipientListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateThreadAlarm(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mChatId:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/mms/rcs/transaction/ActionsFactory;->setGroupChatNotiStatus(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RecipientListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-wide v1, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadid:J

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Conversation;->setGroupChatNotiEnabled(Z)V

    return-void
.end method

.method public updateThreadAlias(Ljava/lang/String;)V
    .locals 6

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/android/mms/freemessage/FreeMessageProperties$FreeMessageThreads;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_0

    const-string v0, "alias"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/RecipientListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normal_thread_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/mms/ui/RecipientListActivity;->mThreadid:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
