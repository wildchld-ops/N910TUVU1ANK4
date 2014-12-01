.class public Lcom/android/mms/ui/LinkActionChooserFragment;
.super Landroid/app/DialogFragment;
.source "LinkActionChooserFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/LinkActionChooserFragment$ViewAction;,
        Lcom/android/mms/ui/LinkActionChooserFragment$Action;
    }
.end annotation


# static fields
.field static final ACTION_ADD_TO_BOOKMARKS:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field static final ACTION_ADD_TO_CONTACTS:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field static final ACTION_CALL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field static final ACTION_COPY_TEXT:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field static final ACTION_IP_CALL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field static final ACTION_JOIN_GROUP_VOICE_TALK:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field static final ACTION_OPEN_URL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field static final ACTION_SEND_EMAIL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field static final ACTION_SEND_TEXT_MESSAGE:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field static final ACTION_START_BAIDU:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field static final ACTION_START_YELLOWPAGE:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field static final ACTION_VIDEO_CALL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field static final ACTION_VIEW_CONTACT:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

.field private static final EXTRA_TEXT:Ljava/lang/String; = "text"

.field private static final EXTRA_URL:Ljava/lang/String; = "url"

.field private static final TAG:Ljava/lang/String; = "Mms/LinkActionChooserFragment"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/mms/ui/LinkActionChooserFragment$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private urlcheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$ViewAction;

    const v1, 0x7f0c01a7

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$ViewAction;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_SEND_EMAIL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$ViewAction;

    const v1, 0x7f0c01a4

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$ViewAction;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_OPEN_URL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$3;

    const v1, 0x7f0c0005

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$3;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_CALL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$4;

    const v1, 0x7f0c023c

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$4;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_VIDEO_CALL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$5;

    const v1, 0x7f0c0007

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$5;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_IP_CALL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$6;

    const v1, 0x7f0c01a5

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$6;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_BOOKMARKS:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$7;

    const v1, 0x7f0c0477

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$7;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_JOIN_GROUP_VOICE_TALK:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$8;

    const v1, 0x7f0c042b

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$8;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_COPY_TEXT:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$9;

    const v1, 0x7f0c004b

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$9;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_CONTACTS:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$10;

    const v1, 0x7f0c004a

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$10;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_VIEW_CONTACT:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$11;

    const v1, 0x7f0c01a6

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$11;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_SEND_TEXT_MESSAGE:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$12;

    const v1, 0x7f0c0585

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$12;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_START_BAIDU:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$13;

    const v1, 0x7f0c0584

    invoke-direct {v0, v1}, Lcom/android/mms/ui/LinkActionChooserFragment$13;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_START_YELLOWPAGE:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DialogFragment;
    .locals 3

    new-instance v1, Lcom/android/mms/ui/LinkActionChooserFragment;

    invoke-direct {v1}, Lcom/android/mms/ui/LinkActionChooserFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "text"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private showUnownURLinkExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c004d

    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0c004e

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400bf

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isUnknownURLlink()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_OPEN_URL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getURLlinkOption(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v0, "Mms/LinkActionChooserFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URL Link Setting : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v7}, Lcom/android/mms/ui/LinkActionChooserFragment$Action;->execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v0, Lcom/android/mms/ui/LinkActionChooserFragment$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/LinkActionChooserFragment$2;-><init>(Lcom/android/mms/ui/LinkActionChooserFragment;Lcom/android/mms/ui/LinkActionChooserFragment$Action;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LinkActionChooserFragment;->showUnownURLinkExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v7}, Lcom/android/mms/ui/LinkActionChooserFragment$Action;->execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-virtual {v2, v0, v1, v7}, Lcom/android/mms/ui/LinkActionChooserFragment$Action;->execute(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    const-string v3, "url"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    const-string v3, "text"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f04007e

    const v6, 0x7f0b02ce

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_SEND_EMAIL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_SEND_TEXT_MESSAGE:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_VIEW_CONTACT:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_COPY_TEXT:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c004e

    new-instance v5, Lcom/android/mms/ui/LinkActionChooserFragment$1;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/LinkActionChooserFragment$1;-><init>(Lcom/android/mms/ui/LinkActionChooserFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v2

    :cond_4
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_CONTACTS:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_CALL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->getEnableVideoCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_VIDEO_CALL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupportIpCall()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_IP_CALL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_8
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_VIEW_CONTACT:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_9
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isAllowedDefaultSmsApp()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_SEND_TEXT_MESSAGE:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_CONTACTS:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_b
    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mText:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isNumberCanAddToContact(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_CONTACTS:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePoi()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    const-string v4, "POI:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_START_YELLOWPAGE:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    const-string v4, "http://www.Groupvoicetalk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    const-string v4, "com.sec.android.app.groupvoicetalk"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_JOIN_GROUP_VOICE_TALK:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    :cond_e
    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_OPEN_URL:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mUrl:Ljava/lang/String;

    const-string v4, "rtsp://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    const-string v4, "com.android.browser"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    const-string v4, "com.sec.android.app.sbrowser"

    invoke-static {v3, v4}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_f
    iget-object v3, p0, Lcom/android/mms/ui/LinkActionChooserFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/mms/ui/LinkActionChooserFragment;->ACTION_ADD_TO_BOOKMARKS:Lcom/android/mms/ui/LinkActionChooserFragment$Action;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
