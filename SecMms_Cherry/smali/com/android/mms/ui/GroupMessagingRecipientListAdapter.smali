.class public Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupMessagingRecipientListAdapter.java"


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
.field private static final TAG:Ljava/lang/String; = "Mms/GroupMessagingRecipientListAdapter"

.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field private layout:I

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mContact:Lcom/android/mms/data/Contact;

.field private mContext:Landroid/content/Context;

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

.field private final mlistner:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Landroid/view/View$OnClickListener;)V
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
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput p2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->layout:I

    iput-object p3, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mRecipientListItems:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mlistner:Landroid/view/View$OnClickListener;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    move-object v5, p2

    if-nez v5, :cond_0

    iget-object v7, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->layout:I

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mRecipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/RecipientListItem;

    invoke-virtual {v7}, Lcom/android/mms/ui/RecipientListItem;->getContact()Lcom/android/mms/data/Contact;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->setContactInfo(Lcom/android/mms/data/Contact;)V

    const v7, 0x7f0b004a

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v7, 0x7f0b006e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v7, 0x7f0b01c5

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0b01c4

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v7, 0x7f0b0049

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/QuickContactBadge;

    iget-object v7, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->updateAvatarView(Landroid/widget/QuickContactBadge;)V

    new-instance v7, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter$1;

    invoke-direct {v7, p0, p1}, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter$1;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter$2;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter$2;-><init>(Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v7, 0x7f0c030a

    invoke-virtual {v6, v7, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v7, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mlistner:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v5

    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onSelectItem(I)V
    .locals 5

    if-gez p1, :cond_0

    const-string v2, "Mms/GroupMessagingRecipientListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSelectItem invalid position : position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mRecipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientListItem;->getContact()Lcom/android/mms/data/Contact;

    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mRecipientListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/RecipientListItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientListItem;->getContact()Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public setContactInfo(Lcom/android/mms/data/Contact;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    return-void
.end method

.method public setContactInfo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    return-void
.end method

.method public updateAvatarView(Landroid/widget/QuickContactBadge;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    iget-object v2, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/mms/ui/GroupMessagingRecipientListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
