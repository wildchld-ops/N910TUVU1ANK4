.class final Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteShareQuickConnectListInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extraInfo:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2    # Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;->displayLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;->extraInfo:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2    # Ljava/lang/CharSequence;
    .param p3    # Landroid/graphics/drawable/Drawable;
    .param p4    # Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;->displayLabel:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;->extraInfo:Ljava/lang/CharSequence;

    return-void
.end method
