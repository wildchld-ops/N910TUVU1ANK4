.class public Lcom/android/settings/ApnPreference;
.super Landroid/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field private static mSelectedKey:Ljava/lang/String;


# instance fields
.field private isSprHidden:Z

.field private isVzwEditable:Z

.field private mEditable:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    if-ne p2, v2, :cond_0

    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    iput-boolean v2, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    iput-boolean v1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    iput-boolean v0, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    invoke-direct {p0}, Lcom/android/settings/ApnPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v5, 0x1010001

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_1

    move-object v1, v4

    check-cast v1, Landroid/widget/RadioButton;

    iget-boolean v5, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    if-eqz v5, :cond_3

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object v1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    :cond_1
    :goto_0
    const/high16 v5, 0x1010000

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    instance-of v5, v2, Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-object v3

    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_2

    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_1
    sput-object p1, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sput-object v3, Lcom/android/settings/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    sput-object v3, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    if-eqz p1, :cond_1

    const/high16 v4, 0x1010000

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v2

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v1, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-boolean v4, p0, Lcom/android/settings/ApnPreference;->isSprHidden:Z

    if-eqz v4, :cond_2

    const-string v4, "keyString"

    const-string v5, "hidden"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/ApnPreference;->isVzwEditable:Z

    if-eqz v4, :cond_0

    const-string v4, "vzw"

    const-string v5, "editable"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setChecked()V
    .locals 1

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnPreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public setEditable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mEditable:Z

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/ApnPreference;->mSelectable:Z

    return-void
.end method
