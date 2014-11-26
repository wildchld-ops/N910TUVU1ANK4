.class public Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HomeSyncAccountManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field email:Landroid/widget/TextView;

.field image_size:Landroid/widget/ImageView;

.field is_register:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field size:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter$ViewHolder;->this$0:Lcom/android/settings/accountmanagement/HomeSyncAccountManagement$MemberAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
