.class Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "EditRejectCallWithMsgIconMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;Landroid/content/Context;)V
    .locals 1
    .param p2    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->THUMB_ICONS:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1    # I

    const-string v0, "EditIconMode"

    const-string v1, "getItem() is not supported!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 4
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg$ImageAdapter;->this$1:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget-object v2, v2, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f04007c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;

    invoke-direct {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;-><init>()V

    const v2, 0x7f0a019f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;->image:Landroid/widget/ImageView;

    sget-object v3, Lcom/android/phone/callsettings/RejectCallWithMsgIconModeConst;->ICONS:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ViewHolder;

    goto :goto_0
.end method
