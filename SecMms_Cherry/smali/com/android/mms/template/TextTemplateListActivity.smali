.class public Lcom/android/mms/template/TextTemplateListActivity;
.super Landroid/app/Activity;
.source "TextTemplateListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;,
        Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;
    }
.end annotation


# static fields
.field private static final ACTIVITY_TITLE:Ljava/lang/String; = "activity_title"

.field private static final CREATE_SMS_TEMPLATE:I = 0x2

.field private static final DEBUG:Z = true

.field public static final DELETE_MODE:I = 0x1

.field private static final EDIT_SMS_TEMPLATE:I = 0x1

.field private static final INTENT_TEMPLATE_UPDATE:Ljava/lang/String; = "com.sec.android.mms.UPDATED_TEMPLATE"

.field public static final LIST_MULTIMODE_ALL:I = 0x0

.field public static final LIST_MULTIMODE_DELETE:I = 0x1

.field private static final MENU_CREATE:I = 0x66

.field private static final MENU_DELETE:I = 0x67

.field public static final NORMAL_MODE:I = 0x0

.field private static final OFFSET:I = 0x64

.field private static final TAG:Ljava/lang/String; = "Mms/TextTemplateListActivity"

.field private static TemplateEditting:Z

.field private static sOldLocale:Ljava/util/Locale;


# instance fields
.field private CHECKBOX_FLOATING_DEFAULT_DURATION:I

.field private SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

.field private TextTemplateSelector:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarTitle:Landroid/widget/TextView;

.field mAudioManager:Landroid/media/AudioManager;

.field private mCheckedMsgIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field protected mDeleteConfirmDialog:Landroid/content/DialogInterface;

.field private mEmptyBackgroundImage:Landroid/widget/ImageView;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewTMODesc:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsInEditMode:Z

.field private mIsLastItemOfSelectAll:Z

.field private mIsSelectAll:Z

.field private mIsSelectAllmode:Z

.field private mIsUnselectAll:Z

.field private mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

.field private mListMultiMode:I

.field private mListView:Landroid/widget/ListView;

.field private mMenuCreate:Landroid/view/MenuItem;

.field private mMenuDelete:Landroid/view/MenuItem;

.field mModeCallback:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;

.field private mMultiActionMode:Landroid/view/ActionMode;

.field private mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field public mScreenType:I

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mSelectedButton:Landroid/widget/Button;

.field private mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

.field private mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

.field private sendToComposer:Z

.field private templateCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/template/TextTemplateListActivity;->sOldLocale:Ljava/util/Locale;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/template/TextTemplateListActivity;->TemplateEditting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    iput-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    iput v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mScreenType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->sendToComposer:Z

    iput-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMultiActionMode:Landroid/view/ActionMode;

    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsUnselectAll:Z

    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsSelectAll:Z

    iput v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListMultiMode:I

    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsSelectAllmode:Z

    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsLastItemOfSelectAll:Z

    iput-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mModeCallback:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;

    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsInEditMode:Z

    new-instance v0, Landroid/view/animation/interpolator/SineInOut70;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->CHECKBOX_FLOATING_DEFAULT_DURATION:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    new-instance v0, Lcom/android/mms/template/TextTemplateListActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/template/TextTemplateListActivity$3;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private UpdateQuery()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "ListQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    sget-object v1, Lcom/android/mms/template/TextTemplateProvider;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/mms/template/TextTemplateProvider;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateActionBarTitle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateListAdapter;
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/android/mms/template/TextTemplateProvider;
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/template/TextTemplateListActivity;Z)V
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionbarTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/mms/template/TextTemplateListActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;
    .param p1    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionbarTitle:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mSelectedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/template/TextTemplateListActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;
    .param p1    # Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mSelectedButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mSelectAll:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/template/TextTemplateListActivity;I)V
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/template/TextTemplateListActivity;->setTextTemplateSelector(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/template/TextTemplateListActivity;)Z
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-boolean v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsSelectAllmode:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/mms/template/TextTemplateListActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsSelectAllmode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/template/TextTemplateListActivity;)V
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/template/TextTemplateListActivity;)Z
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-boolean v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsLastItemOfSelectAll:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/template/TextTemplateListActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsLastItemOfSelectAll:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/template/TextTemplateListActivity;)Z
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-boolean v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsInEditMode:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/mms/template/TextTemplateListActivity;Z)Z
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsInEditMode:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/mms/template/TextTemplateListActivity;)I
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->CHECKBOX_FLOATING_DEFAULT_DURATION:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->SINE_IN_OUT_70:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/template/TextTemplateListActivity;)Landroid/view/ActionMode;
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMultiActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/template/TextTemplateListActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;
    .param p1    # Landroid/view/ActionMode;

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMultiActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/template/TextTemplateListActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/template/TextTemplateListActivity;)I
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListMultiMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/template/TextTemplateListActivity;I)I
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListMultiMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/template/TextTemplateListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/template/TextTemplateListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0    # Lcom/android/mms/template/TextTemplateListActivity;
    .param p1    # Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;

    return-object p1
.end method

.method private confirmDeleteDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 8
    .param p1    # I
    .param p2    # Landroid/content/DialogInterface$OnClickListener;

    const v4, 0x7f0c007c

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v3}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0c0183

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    if-le p1, v5, :cond_1

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0c032c

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iput-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f0c032b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getTextTemplateSelector()I
    .locals 1

    iget v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->TextTemplateSelector:I

    return v0
.end method

.method private initResource()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNoteModel()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mSelectAll:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mSelectAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mSelectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/template/TextTemplateListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/template/TextTemplateListActivity$1;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f0b0159

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v0, 0x7f0b0371

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyView:Landroid/view/View;

    const v0, 0x7f0b0372

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyViewTMODesc:Landroid/widget/TextView;

    return-void
.end method

.method private isEmptyViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEmptyBgImage()V
    .locals 4

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->isEmptyViewVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v3, 0x7f0202a5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyBackgroundImage:Landroid/widget/ImageView;

    const v3, 0x7f0202a6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method private setMode(Z)V
    .locals 0
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateTemplateSharedPref()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateActionBarTitle()V

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private setTextTemplateSelector(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/mms/template/TextTemplateListActivity;->TextTemplateSelector:I

    return-void
.end method

.method private updateActionBarTitle()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0
.end method

.method private updateEmptyScreen(I)V
    .locals 4
    .param p1    # I

    const/16 v3, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyViewTMODesc:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->setEmptyBgImage()V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->setTemplateEditing(Z)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/mms/template/TextTemplateListAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->updateEmptyScreen(I)V

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0x20

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method public checkTemplateEditTMO()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/template/TextTemplateListActivity;->setTextTemplateSelector(I)V

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.extra.TEMPLATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "activity_title"

    const v3, 0x7f0c0220

    invoke-virtual {p0, v3}, Lcom/android/mms/template/TextTemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/android/mms/template/TextTemplateListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public getTemplateEditing()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/template/TextTemplateListActivity;->TemplateEditting:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v5, 0x1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "android.intent.extra.TEMPLATE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/mms/template/TextTemplateProvider;->updateTemplate(Landroid/database/Cursor;ILjava/lang/String;Z)I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(Z)V

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.mms.UPDATED_TEMPLATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "android.intent.extra.TEMPLATE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    invoke-virtual {v2, v1}, Lcom/android/mms/template/TextTemplateProvider;->createTemplate(Ljava/lang/String;)Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(Z)V

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.mms.UPDATED_TEMPLATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClickDone()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lcom/android/mms/template/TextTemplateListActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/template/TextTemplateListActivity$2;-><init>(Lcom/android/mms/template/TextTemplateListActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->confirmDeleteDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "Mms/TextTemplateListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Lcom/android/mms/template/TextTemplateListActivity;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/mms/template/TextTemplateListActivity;->sOldLocale:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->UpdateQuery()V

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateActionBarTitle()V

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->setEmptyBgImage()V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mModeCallback:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mModeCallback:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->updateSelectionButtonHeight()V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mModeCallback:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->updateTitleTextSize()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "Mms/TextTemplateListActivity"

    const-string v4, "onCreate "

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f0400a2

    invoke-virtual {p0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->initResource()V

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v1, Lcom/android/mms/template/TextTemplateListActivity;->sOldLocale:Ljava/util/Locale;

    new-instance v1, Lcom/android/mms/template/TextTemplateProvider;

    invoke-direct {v1, p0}, Lcom/android/mms/template/TextTemplateProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateProvider;->open()Lcom/android/mms/template/TextTemplateProvider;

    new-instance v1, Lcom/android/mms/template/TextTemplateListAdapter;

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-direct {v1, p0, v4}, Lcom/android/mms/template/TextTemplateListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    const v1, 0x7f0b0370

    invoke-virtual {p0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->mOnTextTemplateListItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    new-instance v1, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;-><init>(Lcom/android/mms/template/TextTemplateListActivity;Lcom/android/mms/template/TextTemplateListActivity$1;)V

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mModeCallback:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/mms/template/TextTemplateListActivity;->mModeCallback:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-direct {p0, v2}, Lcom/android/mms/template/TextTemplateListActivity;->setMode(Z)V

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "callFromSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->sendToComposer:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/Menu;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/android/mms/ui/NullDialog;->getInstance()Lcom/android/mms/ui/NullDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mDeleteConfirmDialog:Landroid/content/DialogInterface;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTextTemplateProvider:Lcom/android/mms/template/TextTemplateProvider;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateProvider;->close()V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_3

    iput-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mActionBar:Landroid/app/ActionBar;

    :cond_3
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->getRegistered()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->setRegistered(Z)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onListItemClick(I)V
    .locals 9
    .param p1    # I

    const/4 v8, -0x1

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTemplateEditing()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/mms/template/TextTemplateListActivity;->setTemplateEditing(Z)V

    invoke-direct {p0, p1}, Lcom/android/mms/template/TextTemplateListActivity;->setTextTemplateSelector(I)V

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->getTextTemplateSelector()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getTextTemplate(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->sendToComposer:Z

    if-ne v5, v7, :cond_3

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.mms"

    const-string v6, "com.android.mms.ui.ConversationComposer"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-le v0, v8, :cond_2

    if-eqz v4, :cond_1

    const-string v5, "sms_body"

    aget-object v6, v4, v0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/mms/template/TextTemplateListActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v5, "sms_body"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v5, "sms_body"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-le v0, v8, :cond_5

    if-eqz v4, :cond_4

    const-string v5, "android.intent.extra.TEMPLATE"

    aget-object v6, v4, v0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const-string v5, "activity_title"

    const v6, 0x7f0c0220

    invoke-virtual {p0, v6}, Lcom/android/mms/template/TextTemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v7}, Lcom/android/mms/template/TextTemplateListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    const-string v5, "android.intent.extra.TEMPLATE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    const-string v5, "android.intent.extra.TEMPLATE"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return v1

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/template/TextTemplateEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEMPLATE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "activity_title"

    const v2, 0x7f0c021c

    invoke-virtual {p0, v2}, Lcom/android/mms/template/TextTemplateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    :sswitch_1
    iget v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListMultiMode:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListMultiMode:I

    iget-object v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->twShowMultiChoiceMode(Z)V

    iput v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mScreenType:I

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateScreen()V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->finish()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x67 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1    # Landroid/view/Menu;

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/16 v0, 0x66

    const v1, 0x7f0c0127

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    const v1, 0x7f0202ed

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuCreate:Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x67

    const v1, 0x7f0c007c

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    const v1, 0x7f0200d0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMenuDelete:Landroid/view/MenuItem;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMenuItemActionForOrientation()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRestart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/mms/template/TextTemplateListActivity;->updateActionBarTitle()V

    invoke-virtual {p0, v2}, Lcom/android/mms/template/TextTemplateListActivity;->setTemplateEditing(Z)V

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->getRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    invoke-virtual {v0, v2}, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->setRegistered(Z)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-static {p0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/template/TextTemplateListActivity;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 3

    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;-><init>(Lcom/android/mms/template/TextTemplateListActivity;Lcom/android/mms/template/TextTemplateListActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;->setRegistered(Z)V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mTemplateProviderReceiver:Lcom/android/mms/template/TextTemplateListActivity$TemplateProviderReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.android.mms.UPDATED_TEMPLATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/template/TextTemplateListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/template/TextTemplateListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    :cond_0
    return-void
.end method

.method public selectAllList()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const-string v1, "Mms/TextTemplateListActivity"

    const-string v2, "mCheckedMsgIds is null just return"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsSelectAllmode:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/template/TextTemplateListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iput-boolean v2, p0, Lcom/android/mms/template/TextTemplateListActivity;->mIsLastItemOfSelectAll:Z

    :cond_2
    iget-object v1, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTemplateEditing(Z)V
    .locals 0
    .param p1    # Z

    sput-boolean p1, Lcom/android/mms/template/TextTemplateListActivity;->TemplateEditting:Z

    return-void
.end method

.method public unSelectAllList()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const-string v0, "Mms/TextTemplateListActivity"

    const-string v1, "mCheckedMsgIds is null just return"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mCheckedMsgIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mListAdapter:Lcom/android/mms/template/TextTemplateListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mModeCallback:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mModeCallback:Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;

    invoke-virtual {v0}, Lcom/android/mms/template/TextTemplateListActivity$ModeCallback;->updateSelectionMenu()V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMultiActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/template/TextTemplateListActivity;->mMultiActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    goto :goto_0
.end method

.method public updateTemplateSharedPref()V
    .locals 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->templateCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v5, "Mms/TextTemplateListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateTemplateSharedPref(), strTemplate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/mms/template/TextTemplateListActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "pref_key_sms_text_template"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
