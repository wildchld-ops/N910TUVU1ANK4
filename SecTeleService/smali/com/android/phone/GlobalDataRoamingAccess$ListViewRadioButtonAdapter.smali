.class Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;
.super Landroid/widget/BaseAdapter;
.source "GlobalDataRoamingAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/GlobalDataRoamingAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewRadioButtonAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GlobalDataRoamingAccess;


# direct methods
.method public constructor <init>(Lcom/android/phone/GlobalDataRoamingAccess;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    # getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mEntries:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/phone/GlobalDataRoamingAccess;->access$200(Lcom/android/phone/GlobalDataRoamingAccess;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1    # I

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;->this$0:Lcom/android/phone/GlobalDataRoamingAccess;

    # getter for: Lcom/android/phone/GlobalDataRoamingAccess;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/android/phone/GlobalDataRoamingAccess;->access$300(Lcom/android/phone/GlobalDataRoamingAccess;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$ListViewRadioButtonHolder;-><init>(Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;Landroid/view/View;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter$1;-><init>(Lcom/android/phone/GlobalDataRoamingAccess$ListViewRadioButtonAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
