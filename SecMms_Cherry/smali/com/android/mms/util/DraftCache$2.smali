.class final Lcom/android/mms/util/DraftCache$2;
.super Landroid/database/ContentObserver;
.source "DraftCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DraftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/util/DraftCache;->isInvalidDraft:Z

    return-void
.end method
