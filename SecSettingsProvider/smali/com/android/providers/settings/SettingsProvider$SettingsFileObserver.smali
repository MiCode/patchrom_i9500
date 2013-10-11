.class Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;
.super Landroid/os/FileObserver;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsFileObserver"
.end annotation


# instance fields
.field private final mIsDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPath:Ljava/lang/String;

.field private final mUserHandle:I

.field final synthetic this$0:Lcom/android/providers/settings/SettingsProvider;


# direct methods
.method public constructor <init>(Lcom/android/providers/settings/SettingsProvider;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter "userHandle"
    .parameter "path"

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->this$0:Lcom/android/providers/settings/SettingsProvider;

    .line 309
    const/16 v0, 0x38a

    invoke-direct {p0, p3, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 304
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mIsDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 312
    iput p2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mUserHandle:I

    .line 313
    iput-object p3, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mPath:Ljava/lang/String;

    .line 314
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 5
    .parameter "event"
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 317
    invoke-static {}, Lcom/android/providers/settings/SettingsProvider;->access$000()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mUserHandle:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 318
    .local v0, modsInFlight:I
    if-lez v0, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const-string v1, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mUserHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " external modification to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mIsDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 329
    const-string v1, "SettingsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mUserHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updating our caches for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->this$0:Lcom/android/providers/settings/SettingsProvider;

    iget v2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mUserHandle:I

    #calls: Lcom/android/providers/settings/SettingsProvider;->fullyPopulateCaches(I)V
    invoke-static {v1, v2}, Lcom/android/providers/settings/SettingsProvider;->access$100(Lcom/android/providers/settings/SettingsProvider;I)V

    .line 331
    iget-object v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsFileObserver;->mIsDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
