.class public Lcom/android/settings/myplace/MyPlacePreference;
.super Landroid/preference/Preference;
.source "MyPlacePreference.java"


# instance fields
.field private mId:I

.field private mTypeBt:Z

.field private mTypeMap:Z

.field private mTypeWifi:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZZ)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/android/settings/myplace/MyPlacePreference;->mId:I

    iput-boolean p3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeMap:Z

    iput-boolean p4, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeWifi:Z

    iput-boolean p5, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeBt:Z

    const v0, 0x7f04015a

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    const v0, 0x7f040153

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getMyPlaceId()I
    .locals 1

    iget v0, p0, Lcom/android/settings/myplace/MyPlacePreference;->mId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    const v5, 0x7f0202f2

    const v4, 0x7f0202ef

    const v3, 0x7f0b033f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b0340

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0b0341

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeBt:Z

    if-eqz v3, :cond_2

    const v3, 0x7f0202ec

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeWifi:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeMap:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeMap:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeWifi:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeMap:Z

    if-eqz v3, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/myplace/MyPlacePreference;->mTypeMap:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
