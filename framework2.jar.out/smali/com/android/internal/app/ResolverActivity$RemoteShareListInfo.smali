.class final Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteShareListInfo"
.end annotation


# instance fields
.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extraInfo:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->displayLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->extraInfo:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->displayLabel:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;->extraInfo:Ljava/lang/CharSequence;

    return-void
.end method
