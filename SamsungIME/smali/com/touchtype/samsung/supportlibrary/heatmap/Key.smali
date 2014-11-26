.class public Lcom/touchtype/samsung/supportlibrary/heatmap/Key;
.super Ljava/lang/Object;


# instance fields
.field protected mLabel:Ljava/lang/String;

.field protected mLabelX:F

.field protected mLabelY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/Key;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelX()F
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/Key;->mLabelX:F

    return v0
.end method

.method public getLabelY()F
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/Key;->mLabelY:F

    return v0
.end method
