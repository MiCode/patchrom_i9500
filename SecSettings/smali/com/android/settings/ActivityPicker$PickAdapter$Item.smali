.class public Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;
.super Ljava/lang/Object;
.source "ActivityPicker.java"

# interfaces
.implements Lcom/android/settings_ex/AppWidgetLoader$LabelledItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ActivityPicker$PickAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field protected static sResizer:Lcom/android/settings_ex/ActivityPicker$IconResizer;


# instance fields
.field className:Ljava/lang/String;

.field extras:Landroid/os/Bundle;

.field icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .parameter "context"
    .parameter "pm"
    .parameter "resolveInfo"

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 275
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->getResizer(Landroid/content/Context;)Lcom/android/settings_ex/ActivityPicker$IconResizer;

    move-result-object v0

    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ActivityPicker$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    .line 277
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    .line 278
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "context"
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->getResizer(Landroid/content/Context;)Lcom/android/settings_ex/ActivityPicker$IconResizer;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/settings_ex/ActivityPicker$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 263
    return-void
.end method


# virtual methods
.method getIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .parameter "baseIntent"

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 287
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->className:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    iget-object v1, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 298
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v1, "android.intent.extra.shortcut.NAME"

    iget-object v2, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getResizer(Landroid/content/Context;)Lcom/android/settings_ex/ActivityPicker$IconResizer;
    .locals 4
    .parameter "context"

    .prologue
    .line 243
    sget-object v2, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->sResizer:Lcom/android/settings_ex/ActivityPicker$IconResizer;

    if-nez v2, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 245
    .local v0, resources:Landroid/content/res/Resources;
    const/high16 v2, 0x105

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 246
    .local v1, size:I
    new-instance v2, Lcom/android/settings_ex/ActivityPicker$IconResizer;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-direct {v2, v1, v1, v3}, Lcom/android/settings_ex/ActivityPicker$IconResizer;-><init>(IILandroid/util/DisplayMetrics;)V

    sput-object v2, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->sResizer:Lcom/android/settings_ex/ActivityPicker$IconResizer;

    .line 248
    .end local v0           #resources:Landroid/content/res/Resources;
    .end local v1           #size:I
    :cond_0
    sget-object v2, Lcom/android/settings_ex/ActivityPicker$PickAdapter$Item;->sResizer:Lcom/android/settings_ex/ActivityPicker$IconResizer;

    return-object v2
.end method
