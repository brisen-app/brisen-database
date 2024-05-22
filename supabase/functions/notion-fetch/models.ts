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
  modified_at: string
  status: Status
}
