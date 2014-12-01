.class public Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;
.super Landroid/preference/Preference;
.source "WifiApHelpScreenPreference.java"


# static fields
.field private static final MAX_CLIENT:I


# instance fields
.field private mMaxClient:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "8"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->MAX_CLIENT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->MAX_CLIENT:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->mMaxClient:I

    const v0, 0x7f040291

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v2, 0x7f0b066a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0b00ca

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0206b3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f0904b1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
