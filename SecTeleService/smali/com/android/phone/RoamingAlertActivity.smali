.class public Lcom/android/phone/RoamingAlertActivity;
.super Landroid/preference/PreferenceActivity;
.source "RoamingAlertActivity.java"


# instance fields
.field private mRoamingDialog:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/RoamingAlertActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/android/phone/RoamingAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f100048

    invoke-direct {v0, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/RoamingAlertActivity;->mRoamingDialog:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/phone/RoamingAlertActivity;->mRoamingDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/RoamingAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900c0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    new-instance v4, Lcom/android/phone/RoamingAlertActivity$3;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/RoamingAlertActivity$3;-><init>(Lcom/android/phone/RoamingAlertActivity;Lcom/android/internal/telephony/Phone;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    new-instance v4, Lcom/android/phone/RoamingAlertActivity$2;

    invoke-direct {v4, p0}, Lcom/android/phone/RoamingAlertActivity$2;-><init>(Lcom/android/phone/RoamingAlertActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Lcom/android/phone/RoamingAlertActivity$1;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAlertActivity$1;-><init>(Lcom/android/phone/RoamingAlertActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
