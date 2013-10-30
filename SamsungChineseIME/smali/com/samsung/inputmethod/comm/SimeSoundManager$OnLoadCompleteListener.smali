.class public Lcom/samsung/inputmethod/comm/SimeSoundManager$OnLoadCompleteListener;
.super Ljava/lang/Object;
.source "SimeSoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/comm/SimeSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnLoadCompleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/comm/SimeSoundManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/comm/SimeSoundManager;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager$OnLoadCompleteListener;->this$0:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 4
    .parameter "soundPool"
    .parameter "audioId"
    .parameter "status"

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v1, 0x0

    .line 159
    .local v1, key:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager$OnLoadCompleteListener;->this$0:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    #getter for: Lcom/samsung/inputmethod/comm/SimeSoundManager;->mLoadResId:[I
    invoke-static {v2}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->access$000(Lcom/samsung/inputmethod/comm/SimeSoundManager;)[I

    move-result-object v2

    aget v2, v2, v0

    if-ne v2, p2, :cond_2

    .line 161
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager$OnLoadCompleteListener;->this$0:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    #getter for: Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArray:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->access$100(Lcom/samsung/inputmethod/comm/SimeSoundManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 165
    :cond_1
    if-nez p3, :cond_3

    .line 166
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager$OnLoadCompleteListener;->this$0:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    #getter for: Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArrayLoaded:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->access$200(Lcom/samsung/inputmethod/comm/SimeSoundManager;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeSoundManager$OnLoadCompleteListener;->this$0:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    #getter for: Lcom/samsung/inputmethod/comm/SimeSoundManager;->mSparseArrayLoaded:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->access$200(Lcom/samsung/inputmethod/comm/SimeSoundManager;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    const-string v2, "SimeSoundManager"

    const-string v3, " load local audio ring file failed ..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
