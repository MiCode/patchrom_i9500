.class Lcom/android/settings_ex/ApnEditor$ApnSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnEditor;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/ApnEditor;Landroid/os/Handler;)V
    .locals 3
    .parameter
    .parameter "handler"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings_ex/ApnEditor$ApnSettingsObserver;->this$0:Lcom/android/settings_ex/ApnEditor;

    .line 186
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 187
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 188
    .local v0, cr:Landroid/content/ContentResolver;
    #getter for: Lcom/android/settings_ex/ApnEditor;->mUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/settings_ex/ApnEditor;->access$000(Lcom/android/settings_ex/ApnEditor;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 193
    if-nez p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/ApnEditor$ApnSettingsObserver;->this$0:Lcom/android/settings_ex/ApnEditor;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/ApnEditor;->mHasMdmEditedApn:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/ApnEditor;->access$102(Lcom/android/settings_ex/ApnEditor;Z)Z

    .line 196
    :cond_0
    return-void
.end method
