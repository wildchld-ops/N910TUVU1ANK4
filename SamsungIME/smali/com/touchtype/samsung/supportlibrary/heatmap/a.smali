.class final Lcom/touchtype/samsung/supportlibrary/heatmap/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/touchtype/samsung/supportlibrary/heatmap/HeatMap;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/heatmap/Key;",
            ">;"
        }
    .end annotation
.end field

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:[I


# direct methods
.method constructor <init>(Ljava/util/List;FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/heatmap/Key;",
            ">;FFFF)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->a:Ljava/util/List;

    iput p2, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->b:F

    iput p3, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->c:F

    iput p4, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->d:F

    iput p5, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->e:F

    return-void
.end method


# virtual methods
.method protected final a()F
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->d:F

    return v0
.end method

.method protected final a([I)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->f:[I

    return-void
.end method

.method protected final b()F
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->e:F

    return v0
.end method

.method public final getHeight()F
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->c:F

    return v0
.end method

.method public final getImageData()[I
    .locals 1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->f:[I

    return-object v0
.end method

.method public final getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/heatmap/Key;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public final getWidth()F
    .locals 1

    iget v0, p0, Lcom/touchtype/samsung/supportlibrary/heatmap/a;->b:F

    return v0
.end method
