export enum Status {
  NOTHING = 'nothing',

  CREATE = 'create',
  DELETE = 'delete',

  FAILED = 'failed',
  UNPUBLISHED = 'unpublished',
  PUBLISHED = 'published',
}

export type NotionItem = {
  id: string
  sync_status: Status
  created_at: string
  modified_at: string
}

export type NotionIndex = {
  id: string
  name: string
  enabled: boolean
}
